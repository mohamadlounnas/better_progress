import 'package:better_progress/widgets/gpa_calculator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lib/lib.dart';

import '../../progress/progress.dart';

class BacNotes extends StatefulWidget {
  const BacNotes({super.key});

  @override
  State<BacNotes> createState() => _BacNotesState();
}

class _BacNotesState extends State<BacNotes> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  colors: BetterProgress.instance.bacInfo!.moyenneBac > 10? const [Colors.green, Colors.lightGreen] :  [Colors.red, const Color.fromARGB(255, 239, 141, 80)],
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
                          Text('${BetterProgress.instance.bacInfo!.libelleSerieBac}', style: const TextStyle(color: Colors.white, fontSize: 10)),
                          Text('${BetterProgress.instance.bacInfo!.anneeBac}', style: const TextStyle(color: Colors.white, fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('BAC ${BetterProgress.instance.bacInfo!.anneeBac}', style: const TextStyle(color: Colors.white)),
                      Text(
                        BetterProgress.instance.bacInfo!.moyenneBac.toStringAsFixed(2),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        FlexTable(
          configs: const [
            FlexTableItemConfig.flex(3),
            FlexTableItemConfig.flex(1),
            FlexTableItemConfig.flex(1),
            FlexTableItemConfig.flex(2),
          ],
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyMedium!,
            // textAlign: TextAlign.center,
            child: Column(
              children: [
                const ListTile(
                  title: FlexTableItem(
                    children: [
                      Text('Module/Note'),
                      Text('Coef'),
                      Text('GPA'),
                    ],
                  ),
                ),
                const Divider(height: 1),
                const SizedBox(height: 8),
                if (BetterProgress.instance.bacNotes != null)
                  for (var note in BetterProgress.instance.bacNotes!)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                        tileColor: BetterProgress.instance.bacNotes!.indexOf(note) % 2 == 0 ? (Colors.grey.withOpacity(0.2)).withOpacity(0.2) : null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        title: Text(note.note.toString()),
                        subtitle: Text(note.refCodeMatiereLibelleFr),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
