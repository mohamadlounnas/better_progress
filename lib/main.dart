// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';

import 'package:better_progress/view/products.dart';
import 'package:dio/dio.dart';
import 'package:recase/recase.dart';
import 'package:mime/mime.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:image/image.dart' as img;
import 'package:lib/lib.dart';
import 'package:motif/motif.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:better_progress/view/auth.dart';
import 'package:better_progress/widgets/app_container.dart';
import 'package:better_progress/widgets/app_logo.dart';

import 'progress/models/cc_note.dart';
import 'progress/models/exam_note.dart';
import 'progress/progress.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BetterProgress.instance.init();
  runApp(const BetterProgressApp());
}

class BetterProgressApp extends StatefulWidget {
  const BetterProgressApp({Key? key}) : super(key: key);

  @override
  State<BetterProgressApp> createState() => _BetterProgressAppState();
}

class _BetterProgressAppState extends State<BetterProgressApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
      ],
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
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green, brightness: Brightness.dark),
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

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
                    // appBar: ,
                    body: currentIndex == 0? SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            AppBar(
                              backgroundColor: Colors.transparent,
                              title: Row(
                                children: const [
                                  AppLogo(size: 40),
                                  SizedBox(width: 8),
                                  Text('Better Progress'),
                                ],
                              ),
                              actions: [
                                IconButton(
                                  icon: const Icon(Icons.output_outlined),
                                  onPressed: () async {
                                    await BetterProgress.instance.logout();
                                  },
                                ),
                                // user avatar
                                FloatingActionButton(
                                  //  no padding
                                  mini: true,
                                  onPressed: () async {
                                    if (BetterProgress.instance.photoData != null) {
                                      showImageViewer(context, MemoryImage(BetterProgress.instance.photoData!), onViewerDismissed: () {
                                        print("dismissed");
                                      });
                                    }
                                  },
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 2,
                                  child:
                                      // BetterProgress.instance.student?.photo != null ? Image.network(BetterProgress.instance.student!.photoUrl!) :
                                      // use cached image network
                                      BetterProgress.instance.photoData != null
                                          // ? CachedNetworkImage(
                                          //     imageUrl: "https://progres.mesrs.dz/webfve/javax.faces.resource/dynamiccontent.properties.xhtml?ln=primefaces&v=12.0.0&e=12.0.0&pfdrid=99d1ffdd5e4bbddc75cb7695039032f&pfdrt=sc&url=2020%2F100000286001990004_PH_IMP.JPG&pfdrid_c=true",
                                          //     placeholder: (context, url) => const CircularProgressIndicator(),
                                          //     errorWidget: (context, url, error) {
                                          //       print(url);
                                          //       print(error);
                                          //       return const Icon(Icons.error);
                                          //     },
                                          //   )
                                          // :
                                          ? Image.memory(
                                              BetterProgress.instance.photoData!,
                                              fit: BoxFit.cover,
                                              width: 40,
                                              height: 40,
                                            )
                                          : const Icon(Icons.person),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                            // Card(
                            //   margin: const EdgeInsets.all(8),
                            //   color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                            //   elevation: 0,
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(12),
                            //     side: BorderSide(
                            //       color: Colors.grey.withOpacity(0.5),
                            //       width: 1,
                            //     ),
                            //   ),
                            //   clipBehavior: Clip.antiAlias,
                            //   child: Center(
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: const <Widget>[
                            //         Text('You have pushed the button this many times:'),
                            //       ],
                            //     ),
                            //   ),
                            // ),
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
                                key: UniqueKey(),
                                ccNotes: BetterProgress.instance.ccNotes ?? [],
                                notes: BetterProgress.instance.examNotes ?? [],
                              ),
                            ),
                            const SizedBox(height: 8),
                            // copy right
                            ListTile(
                              onTap: () async {
                                try {
                                  await launchUrlString('https://github.com/mohamadlounnas');
                                } catch (e) {
                                  print(e);
                                }
                              },
                              // trailing phone call: 0657606315
                              title: Row(
                                children: [
                                  Expanded(child: 
                                  Text(
                                    'mohamadlounnas | © $copyRightYears Better Progress\nUSDB | All rights reserved.\nMIT License (but limited)',
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                                      fontSize: 12,
                                    ),
                                  ),
                                  ),
                                  Column(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.telegram),
                                    onPressed: () async {
                                      try {
                                        await launchUrlString('https://t.me/+ADPIRJCCi7s1YzZk');
                                      } catch (e) {
                                        print(e);
                                      }
                                    },
                                  ),
                                  const Text('Telegram', style: TextStyle(
                                      fontSize: 12,
                                    ),),
                                ],
                              ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ): ProductsView(),
                    // tow buttons
                    // bottomNavigationBar: BottomNavigationBar(
                    //   currentIndex: currentIndex,
                    //   items: const [
                    //     BottomNavigationBarItem(
                    //       icon: Icon(Icons.home),
                    //       label: 'Progress',
                    //     ),
                    //     BottomNavigationBarItem(
                    //       icon: Icon(Icons.settings),
                    //       label: 'Products',
                    //     ),
                    //   ],
                    //   onTap: (index) {
                    //     setState(() {
                    //       currentIndex = index;
                    //     });
                    //   },
                    // ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String get copyRightYears {
    var now = DateTime.now();
    return "2024${now.year > 2024 ? "-${now.year}" : ""}";
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
                                                          Text('${BetterProgress.instance.studyYears?.first.llEtablissementArabe}', style: TextStyle(color: Colors.white, fontSize: 10)),

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
                                  Text('${BetterProgress.instance.student?.nomArabe} ${BetterProgress.instance.student?.prenomArabe}', style: TextStyle(color: Colors.white)),
                                  const SizedBox(width: 4),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text('${BetterProgress.instance.student?.age} سنة', style: TextStyle(color: Colors.green, fontSize: 8))),
                                ],
                              ),
                              Text('${BetterProgress.instance.studyYears?.first.niveauLibelleLongAr}', style: TextStyle(color: Colors.white, fontSize: 10)),
                              Text('${BetterProgress.instance.studyYears?.first.ofLlSpecialiteArabe}', style: TextStyle(color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${BetterProgress.instance.academicYear?.code}', style: TextStyle(color: Colors.white)),
                          Text(
                            calculateGPA().toStringAsFixed(2),
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text('Coefs $totalCoefficient', style: TextStyle(color: Colors.white)),
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
                                    keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                                    keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                      subtitle: Text(note.mcLibelleFr),
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
