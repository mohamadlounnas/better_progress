import 'package:better_progress/view/auth.dart';
import 'package:better_progress/widgets/app_container.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:motif/motif.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../progress/progress.dart';
import '../../widgets/app_logo.dart';
import '../../widgets/gpa_calculator.dart';

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
                const Positioned.fill(
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
                              title: const Row(
                                children: [
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
                                const SizedBox(width: 8),
                              ],
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
                                  Expanded(
                                    child: Text(
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
                                      const Text(
                                        'Telegram',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    // tow buttons
                    bottomNavigationBar: BottomNavigationBar(
                      currentIndex: currentIndex,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Progress',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.settings),
                          label: 'Products',
                        ),
                      ],
                      onTap: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
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
