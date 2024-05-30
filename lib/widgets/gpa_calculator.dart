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
  List<String> get modules {
    Set<String> _m = {};
    for (var note in examNotes) {
      _m.add(note.moduleName);
    }
    for (var note in ccNotes) {
      _m.add(note.moduleName);
    }
    return _m.toList();
  }

  List<String> get examsPeriods {
    Set<String> _p = {};
    for (var note in widget.notes) {
      _p.add(note.idPeriode.toString());
    }
    return _p.toList();
  }

  List<String> get ccPeriods {
    Set<String> _p = {};
    for (var note in widget.ccNotes) {
      _p.add(note.llPeriode);
    }
    return _p.toList();
  }

  int? get _selectedExamPeriodIndex => _selectedCcPeriodIndex;
  int? _selectedCcPeriodIndex;

  List<ExamNote> get examNotes => _selectedExamPeriodIndex == null
      ? []
      : widget.notes.where((element) {
        print(examsPeriods);
        // return true;
          var a = element.idPeriode.toString();
          var b = examsPeriods[_selectedExamPeriodIndex!];
          return a == b;
        }).toList();
  List<CCNote> get ccNotes => _selectedCcPeriodIndex == null
      ? []
      : widget.ccNotes.where((element) {
          return element.llPeriode == ccPeriods[_selectedCcPeriodIndex!];
        }).toList();

  List<CCNote> get tds => ccNotes.where((element) => element.apCode.toUpperCase() == "TD").toList();

  List<CCNote> get tps => ccNotes.where((element) => element.apCode.toUpperCase() == "TP").toList();
  

  final Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    loadAllNotes();

  }

  loadAllNotes() {
    _controllers.clear();

    for (var note in examNotes) {
      _controllers[note.moduleName] = TextEditingController(text: note.noteExamen?.toString());
    }
    for (var note in ccNotes) {
      _controllers[note.moduleName] = TextEditingController(text: note.note?.toString());
    }

    print("OK");
  }

  double calculateGPA() {
    // var total = 0.0;
    // for (var note in _controllers.entries) {
    //   // var value = double.tryParse(note.value.text);
    //   // if (value != null) {
    //   //   total += value * getCoefficient(note.key);
    //   // }

    //   var value = getTotalOf(note.key);
    //   if (value != null) {
    //     total += value * getCoefficient(note.key);
    //   }
    // }
    // return total / totalCoefficient;

    var total = 0.0;
    for (var module in modules) {
      var value = getTotalOf(module);
      if (value != null) {
        total += value * getCoefficient(module);
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
    return examNotes.where((element) => element.mcLibelleFr.toLowerCase() == name.toLowerCase()).firstOrNull?.rattachementMcCoefficient ?? 0;
  }

  int get totalCoefficient {
    var totalCoefficient = 0;
    for (var note in examNotes) {
      var value = getTotalOf(note.mcLibelleFr.toLowerCase());
      if (value != null) {
        totalCoefficient += note.rattachementMcCoefficient.toInt();
      }
    }
    return totalCoefficient;
  }

  double? getExamNoteOf(String name) {
    var mname = "ex:$name";
    var value = double.tryParse((handleNumber(_controllers[mname]?.text)));
    return value;
  }

  double? getTDNoteOf(String name) {
    var mname = "td:$name";
    var value = double.tryParse((handleNumber(_controllers[mname]?.text)));
    return value;
  }
  

  double? getTPNoteOf(String name) {
    var mname = "tp:$name";
    var value = double.tryParse((handleNumber(_controllers[mname]?.text)));
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
    double? exam = getExamNoteOf(name);
    double? td = getTDNoteOf(name);
    double? tp = getTPNoteOf(name);
    // if (note != null && ccNote != null) {
    //   return note * 0.6 + ccNote * 0.4;
    // }
    // return note ?? ccNote;

    if (tp != null) {
      return tp;
    }
    if (td != null) {
      return exam != null ? (exam * 0.6 + td * 0.4) : td;
    }
    return exam;
  }

  // showOnlyTPOf
  bool showOnlyTPOf(String name) {
    var ccNote = ccNotes.where((element) => element.rattachementMcMcLibelleFr.toLowerCase() == name.toLowerCase()).firstOrNull;
    var note = examNotes.where((element) => element.mcLibelleFr.toLowerCase() == name.toLowerCase()).firstOrNull;
    if (ccNote?.apCode == "TP" && note?.noteExamen == null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // exams
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var cnote in examNotes)
                  Text(
                    cnote.moduleName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
            // tds
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var cnote in tds)
                  Text(
                    cnote.moduleName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
            // tps
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var cnote in tps)
                  Text(
                    cnote.moduleName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ],
        ),
        // 2. cc periods
        Wrap(
          children: [
            for (var period in ccPeriods)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ChoiceChip(
                  label: Text(period),
                  selected: ccPeriods.indexOf(period) == _selectedCcPeriodIndex,
                  onSelected: (value) {
                    setState(() {
                      _selectedCcPeriodIndex = ccPeriods.indexOf(period);
                      loadAllNotes();
                    });
                  },
                ),
              ),
          ],
        ),
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
                              // display wrap of chips for both exam periods and cc periods
                              // 1. exam periods
                              // Wrap(
                              //   children: [
                              //     for (var period in examsPeriods)
                              //       Padding(
                              //         padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              //         child: ChoiceChip(
                              //           label: Text(period),
                              //           selected: examsPeriods.indexOf(period) == _selectedExamPeriodIndex,
                              //           onSelected: (value) {
                              //             setState(() {
                              //               _selectedExamPeriodIndex = examsPeriods.indexOf(period);
                              //             });
                              //           },
                              //         ),
                              //       ),
                              //   ],
                              // ),
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
                for (var note in examNotes)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                      tileColor: examNotes.indexOf(note) % 2 == 0 ? (Colors.grey.withOpacity(0.2)).withOpacity(0.2) : null,
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
                                    controller: _controllers[ccNotes.firstWhere((element) => element.rattachementMcMcLibelleFr.toLowerCase() == note.mcLibelleFr.toLowerCase()).rattachementMcMcLibelleFr.toLowerCase()],
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
