// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';

import 'package:better_progress/view/auth.dart';
import 'package:better_progress/widgets/app_container.dart';
import 'package:better_progress/widgets/app_logo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lib/lib.dart';
import 'package:motif/motif.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'progress/models/cc_note.dart';
import 'progress/models/exam_note.dart';
import 'progress/progress.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';

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
  Uint8List? phtoData;

  @override
  void initState() {
    super.initState();
    loadPhoto();
  }

  void loadPhoto() async {
    // tryLoad from cache
    var prefs = await SharedPreferences.getInstance();
    var photo = prefs.getString("photo:&${BetterProgress.instance.student?.id}"); // base64Encode
    if (photo != null) {
      setState(() {
        phtoData = Uint8List.fromList(base64Decode(photo));
      });
      return;
    }
    var response = await Dio().get(
      "https://progres.mesrs.dz/webfve/javax.faces.resource/dynamiccontent.properties.xhtml?ln=primefaces&v=12.0.0&e=12.0.0&pfdrid=99d1ffdd5e4bbddc75cb7695039032f&pfdrt=sc&url=2020%2F100000286001990004_PH_IMP.JPG&pfdrid_c=true",
      options: Options(
        headers: {
          "Host": "progres.mesrs.dz",
          "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:122.0) Gecko/20100101 Firefox/122.0",
          "Accept": "image/avif,image/webp,*/*",
          "Accept-Language": "ar",
          "Accept-Encoding": "gzip, deflate, br",
          "Referer": "https://progres.mesrs.dz/webfve/pages/profil.xhtml",
          "DNT": "1",
          "Connection": "keep-alive",
          "Cookie": "JSESSIONID=EC99C7D5DE48D726F5431849C0D764C5; webfve=34.0",
          "Sec-Fetch-Dest": "image",
          "Sec-Fetch-Mode": "no-cors",
          "Sec-Fetch-Site": "same-origin",
          "Pragma": "no-cache",
          "Cache-Control": "no-cache",
        },
        responseType: ResponseType.bytes,
      ),
      // options: Options(
      //
      // ),
    );
    setState(() {
      phtoData = Uint8List.fromList(response.data);
    });
    // save to cache
    prefs.setString("photo:&${BetterProgress.instance.student?.id}", base64Encode(response.data));
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
                    body: SingleChildScrollView(
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
                                    showImageViewer(context, MemoryImage(phtoData!), onViewerDismissed: () {
                                      print("dismissed");
                                    });
                                  },
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 2,
                                  child:
                                      // BetterProgress.instance.student?.photo != null ? Image.network(BetterProgress.instance.student!.photoUrl!) :
                                      // use cached image network
                                      BetterProgress.instance.student?.photo != null && phtoData != null
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
                                              phtoData!,
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
                              leading: const Icon(Icons.code),
                              // trailing phone call: 0657606315
                              trailing: Column(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.phone),
                                    onPressed: () async {
                                      try {
                                        await launchUrlString('tel:+213657606315');
                                      } catch (e) {
                                        print(e);
                                      }
                                    },
                                  ),
                                  // const Text('Call'),
                                ],
                              ),
                              title: Text(
                                'mohamadlounnas | © $copyRightYears Better Progress\nUSDB | All rights reserved.\nMIT License (but limited)',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
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
  Map<String, TextEditingController> _controllers = {};
  Map<String, TextEditingController> _ccControllers = {};

  @override
  void initState() {
    super.initState();
    for (var note in notes) {
      _controllers[note.mcLibelleFr] = TextEditingController(text: note.noteExamen?.toString());
    }
    for (var note in ccNotes) {
      _ccControllers[note.rattachementMcMcLibelleFr] = TextEditingController(text: note.note?.toString());
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
    return notes.firstWhere((element) => element.mcLibelleFr == name).rattachementMcCoefficient;
  }

  int get totalCoefficient {
    var totalCoefficient = 0;
    for (var note in notes) {
      var value = getTotalOf(note.mcLibelleFr);
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
    var ccNote = ccNotes.where((element) => element.rattachementMcMcLibelleFr == name).firstOrNull;
    var note = notes.where((element) => element.mcLibelleFr == name).firstOrNull;
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
                  if (false)
                    Center(
                        child: Column(
                      children: [
                        Icon(
                          Icons.school,
                          color: Colors.white,
                          size: 50,
                        ),
                        // niveauLibelleLongLt
                        Text(
                          '${BetterProgress.instance.studyYears?.first.niveauCode}',
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 20,
                            // outlined paint
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 0.5
                              ..color = Colors.white,
                          ),
                        ),
                      ],
                    )),
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
                              Text('${BetterProgress.instance.studyYears?.first.llEtablissementArabe}', style: TextStyle(color: Colors.white, fontSize: 10)),
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
                              if (!showOnlyTPOf(note.mcLibelleFr))
                                Expanded(
                                  child: TextField(
                                    controller: _controllers[note.mcLibelleFr],
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
                              // if have CC note with same name
                              if (ccNotes.any((element) => element.rattachementMcMcLibelleFr == note.mcLibelleFr)) ...[
                                if (!showOnlyTPOf(note.mcLibelleFr)) const SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    controller: _ccControllers[ccNotes.firstWhere((element) => element.rattachementMcMcLibelleFr == note.mcLibelleFr).rattachementMcMcLibelleFr],
                                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      labelText: 'CC',
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
                            (getTotalOf(note.mcLibelleFr)?.toStringAsFixed(2)).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: getTotalOf(note.mcLibelleFr) == null
                                  ? null
                                  : getTotalOf(note.mcLibelleFr)! < 10
                                      ? Colors.red
                                      : Colors.green,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(note.mcLibelleFr.toString()),
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
