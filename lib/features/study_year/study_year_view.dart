import 'package:better_progress/progress/models/study_result.dart';
import 'package:better_progress/progress/progress.dart';
import 'package:flutter/material.dart';

class StudyResultsView extends StatefulWidget {
  final int yearId;
  const StudyResultsView({super.key, required this.yearId});

  @override
  State<StudyResultsView> createState() => _StudyResultsViewState();
}

class _StudyResultsViewState extends State<StudyResultsView> {
  StudyResult? studyResultS1;
  StudyResult? studyResultS2;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    loadStudyResults();
  }

  Future<void> loadStudyResults() async {
    try {
      var results = await BetterProgress.instance.getResults(widget.yearId);
      setState(() {
        studyResultS1 = results.firstOrNull;
        studyResultS2 = results.lastOrNull;
      });
    } catch (e) {
      // retry after 5 second
      await Future<void>.delayed(const Duration(seconds: 5));
      await loadStudyResults();
    }
  }

  // studyResult
  StudyResult? get studyResult => currentIndex == 0 ? studyResultS1 : studyResultS2;

  @override
  Widget build(BuildContext context) {
    if (studyResultS1 == null && studyResultS2 == null) {
      return const SizedBox(
        height: 100,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return ListView(
      children: [
        BottomNavigationBar(
          elevation: 0,
          currentIndex: currentIndex,
          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: arfr('السداسي الأول', 'Semestre 1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: arfr('السداسي الثاني', 'Semestre 2'),
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
          if (studyResult == null)
            const SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          else ...[
// moyenne
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(12),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  // greadine color BetterProgress.instance.bacInfo!.moyenneBac > 10
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: studyResult!.moyenne > 10
                          ? const [
                              Colors.green,
                              Colors.lightGreen
                            ]
                          : [
                              Colors.red,
                              const Color.fromARGB(255, 239, 141, 80)
                            ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BetterProgress.instance.universityLogoData != null
                              ? Image.memory(
                                  BetterProgress.instance.universityLogoData!,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                  color: Colors.white,
                                )
                              : const Icon(Icons.person),
                          Text('${BetterProgress.instance.studyYears?.first.llEtablissementArabe}', style: const TextStyle(color: Colors.white, fontSize: 9)),
                        ],
                      ),
                      const VerticalDivider(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('${BetterProgress.instance.student?.nomArabe} ${BetterProgress.instance.student?.prenomArabe}', style: const TextStyle(color: Colors.white)),
                                  const SizedBox(width: 4),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text('${BetterProgress.instance.student?.age} سنة', style: const TextStyle(color: Colors.green, fontSize: 8))),
                                ],
                              ),
                              Text(BetterProgress.instance.bacInfo!.libelleSerieBac, style: const TextStyle(color: Colors.white, fontSize: 10)),
                              Text(BetterProgress.instance.bacInfo!.anneeBac, style: const TextStyle(color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${studyResult!.moyenne}', style: const TextStyle(color: Colors.white, fontSize: 20)),
                          Text('Moyenne', style: const TextStyle(color: Colors.white, fontSize: 9)),
                        ],
                      ),
                      const VerticalDivider(),
                      // creditAcquis
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${studyResult!.creditAcquis.toInt()}/${studyResult!.creditObtenu.toInt()}', style: const TextStyle(color: Colors.white, fontSize: 20)),
                          Text('Crédits', style: const TextStyle(color: Colors.white, fontSize: 9)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // cycleLibelleLongLt
            Row(
              children: [
                Flexible(
                  child: ListTile(
                    leading: const Icon(Icons.school),
                    title: Text(
                      arfr('المستوى', 'Niveau'),
                    ),
                    subtitle: Text(studyResult!.cycleLibelleLongLt),
                  ),
                ),
                // periodeLibelleFr
                Flexible(
                  child: ListTile(
                    leading: const Icon(Icons.school),
                    title: Text(
                      // Période
                      arfr('الفترة', 'Période'),
                    ),
                    subtitle: Text(studyResult!.periodeLibelleFr),
                  ),
                ),
              ],
            ),
            Divider(),
            // each group
            for (var group in studyResult!.bilanUes) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 1,
                  clipBehavior: Clip.antiAlias,
                  // outlined
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: studyResult!.moyenne > 10 ? Colors.green : Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(group.ueNatureLcFr),
                          trailing: Badge(
                            backgroundColor: group.moyenne > 10 ? Colors.green : Colors.red,
                            textColor: Colors.white,
                            label: Text(group.moyenne.toString(), style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        Divider(),
                        for (var ue in group.bilanMcs) ...[
                          ListTile(
                            title: Text(
                              arfr(ue.mcLibelleAr, ue.mcLibelleFr),
                            ),
                            trailing: Text(ue.moyenneGenerale.toString(), style: TextStyle(fontSize: 12, color: ue.moyenneGenerale > 10 ? Colors.green : Colors.red)),
                            subtitle: Text('${ue.creditObtenu.toInt()}/${ue.credit.toInt()} Crédits'),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ]
          ]
      ],
    );
  }
}
