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
  ExamNote? getExamNoteByModuleName(String moduleName) {
    return examNotes.where((element) => element.moduleName == moduleName).firstOrNull;
  }

  List<CCNote> get ccNotes => _selectedCcPeriodIndex == null
      ? []
      : widget.ccNotes.where((element) {
          return element.llPeriode == ccPeriods[_selectedCcPeriodIndex!];
        }).toList();

  List<CCNote> get tds => ccNotes.where((element) => element.apCode.toUpperCase() == "TD").toList();
  CCNote? getTDbyModuleName(String moduleName) {
    return tds.where((element) => element.moduleName == moduleName).firstOrNull;
  }

  CCNote? getTdByRootModule(String rootModule) {
    return tds.where((element) => element.rootModule == rootModule).firstOrNull;
  }

  List<CCNote> get tps => ccNotes.where((element) => element.apCode.toUpperCase() == "TP").toList();
  CCNote? getTPbyModuleName(String moduleName) {
    return tps.where((element) => element.moduleName == moduleName).firstOrNull;
  }

  Map<String, num?> allNotes = {};

  @override
  void initState() {
    super.initState();
    loadAllNotes();
  }

  loadAllNotes() {
    allNotes = {};
    for (var note in examNotes) {
      allNotes[note.moduleName] = note.noteExamen;
    }
    for (var note in tds) {
      allNotes[note.moduleName] = note.note;
    }
    for (var note in tps) {
      allNotes[note.moduleName] = note.note;
    }
    setState(() {
      
    });
  }

  num calculateGPA() {
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

    num total = 0;
    int coef = 0;
    for (var exam in examNotes) {
      var _tds = tds.where((e) => e.rootModule == exam.rootModule);
      assert(_tds.length<= 1);
      CCNote? td = _tds.firstOrNull;
      print("${exam.noteExamen} + ${td?.note} // ${exam.rootModule}");
      if (exam.noteExamen == null) continue;
      num note = td?.note == null? exam.noteExamen!: exam.noteExamen!*0.6+td!.note!*0.4;
      total = total+note*exam.rattachementMcCoefficient.toInt();
      coef += exam.rattachementMcCoefficient.toInt();
    }
    for (var tp in tps) {
      print("${tp.note} // ${tp.rootModule}");
      if (tp.note == null) continue;
      total += tp.note!*1;
      coef += 1;
    }
    return coef == 0? 0 : total/coef;
  }

  // clculate but the modified values (from the comtrollers)
  num calculateGpaModified() {
    num totals = 0;
    int coefs = 0;
    for (var exam in examNotes) {
      var rootName = exam.rootModule;
      var total = getTotalOf(rootName);
      var coef = getCoefficient(rootName);
      if (total == null) continue;
      totals += total*coef;
      coefs+=coef;
      
    }
    return coefs == 0? 0 : totals/coefs;
  }

  // double? getNoteTotal(String id) {
  //   return 0;
  //   var note = double.tryParse(_controllers[id]!.text);
  //   if (note == null) return null;
  //   return note * getCoefficient(id);
  // }

  int getCoefficient(String name) {
    return examNotes.where((element) => element.moduleName == "ex:$name").firstOrNull?.rattachementMcCoefficient.toInt() ?? 0;
  }

  int get totalCoefficient {
    var totalCoefficient = 0;
    for (var note in examNotes) {
      totalCoefficient += note.rattachementMcCoefficient.toInt();
    }
    for (var note in tps) {
      totalCoefficient += 1;
    }
    return totalCoefficient;
  }

  double? getExamNoteOf(String name) {
    var mname = "ex:$name";
    var value = double.tryParse((handleNumber(allNotes[mname].toString())));
    return value;
  }

  double? getTDNoteOf(String name) {
    var mname = "td:$name";
    var value = double.tryParse((handleNumber(allNotes[mname]?.toString())));
    return value;
  }
  

  double? getTPNoteOf(String name) {
    var mname = "tp:$name";
    var value = double.tryParse((handleNumber(allNotes[mname].toString())));
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

  num? getTotalOf(String moduleName) {
    var examNote = allNotes["ex:$moduleName"];
    var tdNote = allNotes["td:$moduleName"];
    var tpNote = allNotes["tp:$moduleName"];
    if (tpNote != null) return tpNote;
    if (examNote == null) return null;
    if (tdNote == null) return examNote;
    return examNote * 0.6 + tdNote * 0.4;
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
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     for (var cnote in examNotes)
            //       Text(
            //         cnote.moduleName,
            //         style: const TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //   ],
            // ),
            // tds
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     for (var cnote in tds)
            //       Text(
            //         cnote.moduleName,
            //         style: const TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //   ],
            // ),
            // tps
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     for (var cnote in tps)
            //       Text(
            //         cnote.moduleName,
            //         style: const TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //   ],
            // ),
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
                            calculateGpaModified().toStringAsFixed(2),
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
                                Expanded(
                                  child: TextFormField(
                                    key: ValueKey(note.id),
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
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    initialValue: allNotes["ex:${note.rootModule}"]?.toString() ?? "",
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
                                      setState(() {
                                        allNotes["ex:${note.rootModule}"] = num.tryParse(value);
                                      });
                                    },
                                  ),
                                ),
                              // if have CC note with same nam  e
                              if (
                                getTdByRootModule(note.rootModule) != null
                              ) ...[
                                const SizedBox(width: 8),
                                Expanded(
                                  child: TextFormField(

                                    key: ValueKey(note.id),                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'required';
                                      }
                                      if (double.tryParse(value) == null) {
                                        return 'must be a number';
                                      }
                                      return null;
                                    },
                                    autovalidateMode: AutovalidateMode.always,
                                    initialValue: allNotes["td:${note.rootModule}"]?.toString() ?? "",
                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      labelText: getTdByRootModule(note.rootModule)!.apCode,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        allNotes["td:${note.rootModule}"] = num.tryParse(value);
                                      });
                                    },
                                  ),
                                )
                              ],
                            ],
                          ),
                          Text("×" + note.rattachementMcCoefficient.toInt().toString()),
                          Text(
                            getTotalOf(note.rootModule)?.toStringAsFixed(2) ?? "!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: getTotalOf(note.rootModule) == null
                                  ? null
                                  : getTotalOf(note.rootModule)! < 10
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
                // TPs
                const ListTile(
                  enabled: false,
                  title: Text("TPs"),
                  leading: Icon(Icons.colorize_rounded),
                ),
                for (var note in tps)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                      tileColor: tps.indexOf(note) % 2 == 0 ? (Colors.grey.withOpacity(0.2)).withOpacity(0.2) : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: FlexTableItem(
                        children: [
                          Row(
                            children: [
                              //
                                Expanded(
                                  child: TextFormField(
                                    key: ValueKey(note.id),
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
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    initialValue: allNotes["tp:${note.rootModule}"]?.toString() ?? "",
                                    // numbers with comma
                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      labelText: 'TP',
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        allNotes["tp:${note.rootModule}"] = num.tryParse(value);
                                      });
                                    },
                                  ),
                                ),
                              // if have CC note with same nam  e
                              if (
                                getTdByRootModule(note.rootModule) != null
                              ) ...[
                                const SizedBox(width: 8),
                                Expanded(
                                  child: TextFormField(

                                    key: ValueKey(note.id),                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'required';
                                      }
                                      if (double.tryParse(value) == null) {
                                        return 'must be a number';
                                      }
                                      return null;
                                    },
                                    autovalidateMode: AutovalidateMode.always,
                                    initialValue: allNotes[note.moduleName]?.toString() ?? "",
                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      labelText: getTdByRootModule(note.rootModule)!.apCode,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        allNotes["tp:${note.rootModule}"] = num.tryParse(value);
                                      });
                                    },
                                  ),
                                )
                              ],
                            ],
                          ),
                          const Text("×1"),
                          Text(
                            getTotalOf(note.rootModule)?.toStringAsFixed(2) ?? "!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: getTotalOf(note.rootModule) == null
                                  ? null
                                  : getTotalOf(note.rootModule)! < 10
                                      ? Colors.red
                                      : Colors.green,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        arfr(note.moduleNameAr, note.moduleName),
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
