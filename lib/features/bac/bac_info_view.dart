import 'package:better_progress/widgets/gpa_calculator.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:lib/lib.dart';

import '../../progress/progress.dart';

class BacInfoView extends StatefulWidget {
  const BacInfoView({super.key});

  @override
  State<BacInfoView> createState() => _BacInfoViewState();
}

class _BacInfoViewState extends State<BacInfoView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                for (var image in [
                  "assets/cards/student_card.jpg",
                  "assets/cards/transport_cart.jpg",
                  "assets/cards/residence_card.jpg",
                ]) ...[
                  AspectRatio(
                    aspectRatio: 1012 / 638,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: const Icon(
                                          Icons.qr_code_2,
                                          size: 90,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "الإسم",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                
                                              Row(
                                                children: [
                                                  if (BetterProgress.instance.student == null)
                                                    const TextPlaceholder()
                                                  else
                                                    Text(
                                                      BetterProgress.instance.student!.nomArabe,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  const Spacer(),
                                                  if (BetterProgress.instance.student == null)
                                                    const TextPlaceholder()
                                                  else
                                                    Text(
                                                      BetterProgress.instance.student!.nomLatin,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              // اللقب
                                              const Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "اللقب",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  if (BetterProgress.instance.student == null)
                                                    const TextPlaceholder()
                                                  else
                                                    Text(
                                                      BetterProgress.instance.student!.prenomArabe,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  const Spacer(),
                                                  if (BetterProgress.instance.student == null)
                                                    const TextPlaceholder()
                                                  else
                                                    Text(
                                                      BetterProgress.instance.student!.prenomLatin,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              // الميداين
                                              const Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "الميداين",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child:
                                                BetterProgress.instance.studyYears == null? const TextPlaceholder():
                                                 Text(
                                                  BetterProgress.instance.studyYears!.first.ofLlDomaineArabe!,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              // تاريخ الميلاد
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      "تاريخ الميلاد",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    if (BetterProgress.instance.student == null)
                                                      const TextPlaceholder()
                                                    else
                                                      Text(
                                                        BetterProgress.instance.student!.lieuNaissanceArabe,
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  if (BetterProgress.instance.student == null)
                                                    const TextPlaceholder()
                                                  else
                                                    Text(
                                                      DateFormat('dd/MM/yyyy').format(BetterProgress.instance.student!.dateNaissance!),
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      ListenableBuilder(
                                          listenable: BetterProgress.instance,
                                          builder: (context, _) {
                                            return Material(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (BetterProgress.instance.photoData != null) {
                                                    showImageViewer(context, MemoryImage(BetterProgress.instance.photoData!), onViewerDismissed: () {
                                                      print("dismissed");
                                                    });
                                                  }
                                                },
                                                child: BetterProgress.instance.photoData != null
                                                    ? Image.memory(
                                                        BetterProgress.instance.photoData!,
                                                        fit: BoxFit.cover,
                                                        width: 100,
                                                      )
                                                    : const Icon(Icons.person),
                                              ),
                                            );
                                          }),
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 10,
                                    // color: Colors.amber,
                                  ),
                                  Text(
                                    'MATRICLUE# ${BetterProgress.instance.bacInfo!.matricule}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
