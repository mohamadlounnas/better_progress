import 'package:flutter/material.dart';
import 'package:lib/lib.dart';

import '../progress/models/cc_note.dart';
import '../progress/models/exam_note.dart';
import '../progress/progress.dart';

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
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, TextEditingController> _ccControllers = {};

  @override
  void initState() {
    super.initState();
    for (var note in notes) {
      _controllers[note.mcLibelleFr.toLowerCase()] = TextEditingController(text: note.noteExamen?.toString());
    }
    for (var note in ccNotes) {
      _ccControllers[note.rattachementMcMcLibelleFr.toLowerCase()] = TextEditingController(text: note.note?.toString());
    }
  }

  double calculateGPA() {
    var total = 0.0;
    for (var note in _controllers.entries) {
      // var value = double.tryParse(note.value.text);
      // if (value != null) {
      //   total += value * getCoefficient(note.key);
      // }

      var value = getTotalOf(note.key);
      if (value != null) {
        total += value * getCoefficient(note.key);
      }
    }
    return total / totalCoefficient;
  }

  // double? getNoteTotal(String id) {
  //   return 0;
  //   var note = double.tryParse(_controllers[id]!.text);
  //   if (note == null) return null;
  //   return note * getCoefficient(id);
  // }

  num getCoefficient(String name) {
    return notes.firstWhere((element) => element.mcLibelleFr.toLowerCase() == name.toLowerCase()).rattachementMcCoefficient;
  }

  int get totalCoefficient {
    var totalCoefficient = 0;
    for (var note in notes) {
      var value = getTotalOf(note.mcLibelleFr.toLowerCase());
      if (value != null) {
        totalCoefficient += note.rattachementMcCoefficient.toInt();
      }
    }
    return totalCoefficient;
  }

  double? getNoteOf(String name) {
    return double.tryParse(handleNumber(_controllers[name]?.text));
  }

  double? getCCNoteOf(String name) {
    var value = double.tryParse((handleNumber(_ccControllers[name]?.text)));
    return value;
  }

  String handleNumber(String? value) {
    var dic = {
      ",": ".",
      "،": ".",
      // arabic numbers
      "٠": "0",
      "١": "1",
      "٢": "2",
      "٣": "3",
      "٤": "4",
      "٥": "5",
      "٦": "6",
      "٧": "7",
      "٨": "8",
      "٩": "9",
    };
    if (value != null) {
      for (var item in dic.entries) {
        value = value!.replaceAll(item.key, item.value);
      }
    }
    return value.toString();
  }

  double? getTotalOf(String name) {
    double? note = getNoteOf(name);
    double? ccNote = getCCNoteOf(name);
    if (note != null && ccNote != null) {
      return note * 0.6 + ccNote * 0.4;
    }
    return note ?? ccNote;
  }

  // showOnlyTPOf
  bool showOnlyTPOf(String name) {
    var ccNote = ccNotes.where((element) => element.rattachementMcMcLibelleFr.toLowerCase() == name.toLowerCase()).firstOrNull;
    var note = notes.where((element) => element.mcLibelleFr.toLowerCase() == name.toLowerCase()).firstOrNull;
    if (ccNote?.apCode == "TP" && note?.noteExamen == null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(8),
            color: calculateGPA() > 10 ? Colors.green : Colors.red,
            child: Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Column(
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
                        Text('${BetterProgress.instance.studyYears?.first.llEtablissementArabe}', style: const TextStyle(color: Colors.white, fontSize: 10)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
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
                              Text('${BetterProgress.instance.studyYears?.first.niveauLibelleLongAr}', style: const TextStyle(color: Colors.white, fontSize: 10)),
                              Text('${BetterProgress.instance.studyYears?.first.ofLlSpecialiteArabe}', style: const TextStyle(color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${BetterProgress.instance.academicYear?.code}', style: const TextStyle(color: Colors.white)),
                          Text(
                            calculateGPA().toStringAsFixed(2),
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text('Coefs $totalCoefficient', style: const TextStyle(color: Colors.white)),
                        ],
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
                for (var note in notes)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                      tileColor: notes.indexOf(note) % 2 == 0 ? (Colors.grey.withOpacity(0.2)).withOpacity(0.2) : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: FlexTableItem(
                        children: [
                          Row(
                            children: [
                              //
                              if (!showOnlyTPOf(note.mcLibelleFr.toLowerCase()))
                                Expanded(
                                  child: TextFormField(
                                    // validator
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'required';
                                      }
                                      if (double.tryParse(value) == null) {
                                        return 'must be a number';
                                      }
                                      return null;
                                    },
                                    autovalidateMode: AutovalidateMode.always,
                                    controller: _controllers[note.mcLibelleFr.toLowerCase()],
                                    // numbers with comma
                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      labelText: 'Exam',
                                    ),
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              // if have CC note with same nam  e
                              if (ccNotes.any((element) => element.rattachementMcMcLibelleFr.toLowerCase() == note.mcLibelleFr.toLowerCase())) ...[
                                if (!showOnlyTPOf(note.mcLibelleFr.toLowerCase())) const SizedBox(width: 8),
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'required';
                                      }
                                      if (double.tryParse(value) == null) {
                                        return 'must be a number';
                                      }
                                      return null;
                                    },
                                    autovalidateMode: AutovalidateMode.always,
                                    controller: _ccControllers[ccNotes.firstWhere((element) => element.rattachementMcMcLibelleFr.toLowerCase() == note.mcLibelleFr.toLowerCase()).rattachementMcMcLibelleFr.toLowerCase()],
                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      labelText: ccNotes.firstWhere((element) => element.rattachementMcMcLibelleFr.toLowerCase() == note.mcLibelleFr.toLowerCase()).apCode,
                                    ),
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  ),
                                )
                              ],
                            ],
                          ),
                          Text("×" + note.rattachementMcCoefficient.toInt().toString()),
                          Text(
                            (getTotalOf(note.mcLibelleFr.toLowerCase())?.toStringAsFixed(2)).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: getTotalOf(note.mcLibelleFr.toLowerCase()) == null
                                  ? null
                                  : getTotalOf(note.mcLibelleFr.toLowerCase())! < 10
                                      ? Colors.red
                                      : Colors.green,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        arfr(note.mcLibelleAr, note.mcLibelleFr),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // String getDescOf(String? mcLibelleFr) {
  //   try {
  //     // convert to title case (exmple: "Action Module Of The Year")
  //     var title = mcLibelleFr!.titleCase;
  //     // replace ’ by space
  //     title = title.replaceAll("’", " ").replaceAll("'", " ").replaceAll("-", " ").replaceAll("/", " ");
  //     // remove any double space
  //     title = title.replaceAll(RegExp(r"\s{2,}"), " ");
  //     // remove any word containing one character
  //     title = title.replaceAll(RegExp(r"\b\w\b"), "").trim().toLowerCase();
  //     // is TP (ifn contains "travaux pratiques")
  //     bool isTP = title.contains("travaux pratiques");
  //     // remove "travaux pratiques" from title
  //     title = title.replaceAll("travaux pratiques", "").trim();
  //     // remove french links "de", "du", "des", "d'", "le", "la", "les", "l'
  //     title = title.replaceAll(RegExp(r"\b(de|du|des|d'|le|la|les|l')\b"), "").trim();

  //     if (isTP) {
  //       var data = title.split(" ");
  //       title = "";
  //       for (var i = 0; i < data.length; i++) {
  //         if (data[i].length > 0) {
  //           title += data[i][0].toUpperCase();
  //         }
  //       }

  //       return "TP $title";
  //     }
  //     return title;
  //   } catch (e) {
  //     return mcLibelleFr ?? "XX";
  //   }
  // }
}
