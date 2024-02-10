// ignore_for_file: prefer_const_constructors

import 'package:better_progress/view/auth.dart';
import 'package:better_progress/widgets/app_container.dart';
import 'package:better_progress/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:lib/lib.dart';
import 'package:motif/motif.dart';

import 'progress/models/cc_note.dart';
import 'progress/models/exam_note.dart';
import 'progress/progress.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BetterProgress.instance.init();
  runApp(const BetterProgressApp());
}

class BetterProgressApp extends StatelessWidget {
  const BetterProgressApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Better Progress',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: BetterProgress.instance,
      builder: (context, _) {
        return ColoredBox(
          color: Theme.of(context).colorScheme.background,
          child: AuthGuard(
            child: Stack(
              children: [
                Positioned.fill(
                  child: SinosoidalMotif(),
                ),
                AppContainer(
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      title: AppLogo(size: 40),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.output_outlined),
                          onPressed: () async {
                            await BetterProgress.instance.logout();
                          },
                        ),
                        // user avatar
                        CircleAvatar(
                          child:
                              // BetterProgress.instance.student?.photo != null ? Image.network(BetterProgress.instance.student!.photo!) :
                              const Icon(Icons.person),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    body: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Card(
                              margin: const EdgeInsets.all(8),
                              color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1,
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text('You have pushed the button this many times:'),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.all(8),
                              color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1,
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: GPACalculator(
                                ccNotes: BetterProgress.instance.ccNotes ?? [],
                                notes: BetterProgress.instance.examNotes ?? [],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class GPACalculator extends StatefulWidget {
 final List<CCNote> ccNotes;
 final List<ExamNote> notes;

  const GPACalculator({
    super.key,
    required this.ccNotes,
    required this.notes,
  });

  @override
  State<GPACalculator> createState() => _GPACalculatorState();
}

class _GPACalculatorState extends State<GPACalculator> {
  late final notes = widget.notes;
  late final ccNotes = widget.ccNotes;
  Map<int, TextEditingController> _controllers = {};
  Map<int, TextEditingController> _ccControllers = {};

  @override
  void initState() {
    super.initState();
    for (var note in notes) {
      _controllers[note.id] = TextEditingController(text: note.noteExamen?.toString());
    }
    for (var note in ccNotes) {
      _ccControllers[note.id] = TextEditingController(text: note.note?.toString());
    }
  }

  double calculateGPA() {
    var total = 0.0;
    for (var note in _controllers.entries) {
      var value = double.tryParse(note.value.text);
      if (value != null) {
        total += value * getCoefficient(note.key);
      }
    }
    return total / totalCoefficient;
  }

  double? getNoteTotal(int id) {
    var note = double.tryParse(_controllers[id]!.text);
    if (note == null) return null;
    return note * getCoefficient(id);
  }

  num getCoefficient(int id) {
    return notes.firstWhere((element) => element.id == id).rattachementMcCoefficient;
  }

  int get totalCoefficient {
    var totalCoefficient = 0;
    for (var note in notes) {
      var value = double.tryParse(_controllers[note.id]!.text);
      if (value != null) {
        totalCoefficient += note.rattachementMcCoefficient.toInt();
      }
    }
    return totalCoefficient;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListenableBuilder(
          listenable: Listenable.merge(_controllers.values.toList()),
          builder: (context, _) {
            /// show result
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(8),
                color: calculateGPA()>10 ? Colors.green : Colors.red,
                child: Container(
                  padding: const EdgeInsets.all(8), 
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('${BetterProgress.instance.academicYear?.code}', style: TextStyle(color: Colors.white)),
                      Text(calculateGPA().toStringAsFixed(2),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30 ),  
                      ),
                      Text('Coefs $totalCoefficient', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            );
          },
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
                ListTile(
                  title: FlexTableItem(
                    children: const [
                      Text('Module/Note'),
                      Text('Coef'),
                      Text('GPA'),
                    ],
                  ),
                ),
                Divider(height: 1),
                for (var note in notes)
                  ListTile(
                    // odd
                    tileColor: notes.indexOf(note) % 2 == 0
                        ? Theme.of(context).colorScheme.primary.withOpacity(0.1): null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                    title: FlexTableItem(
                      children: [
                        // Text(note.noteExamen?.toString() ?? "--"),
                        // Text(note.rattachementMcCoefficient.toString()),
                        // Text(note.rattachementMcCoefficient.toString()),
                        // Text(((note.noteExamen ?? 0) * note.rattachementMcCoefficient * note.rattachementMcCredit).toString()),
        
                        TextField(
                          controller: _controllers[note.id],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'Note',
                          ),
                        ),
                        Text(note.rattachementMcCoefficient.toString()),
                        Text((
                          getNoteTotal(note.id)
                        ).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: note.total == null ? null :
                            note.total!
                             < 10 ? Colors.red : Colors.green,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(note.mcLibelleFr.toString()),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
