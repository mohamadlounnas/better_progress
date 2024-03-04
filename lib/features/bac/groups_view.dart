import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../progress/progress.dart';

class GroupsView extends StatelessWidget {
  const GroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (BetterProgress.instance.groups != null)
        for (final group in BetterProgress.instance.groups!)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(12),
              clipBehavior: Clip.antiAlias,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.green, Colors.lightGreen],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "0${group.periodeCode}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: ListTile(
                                leading: const Icon(Icons.group),
                                title: const Text("Groupe"),
                                subtitle: Text("Number 0${group.nomGroupePedagogique}"),
                              ),
                            ),
                            // periodeLibelleLongLt
                            Flexible(
                              child: ListTile(
                                leading: const Icon(Icons.qr_code_rounded),
                                title: const Text("Periode"),
                                subtitle: Text(group.periodeLibelleLongLt),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        // dateAffectation
                        ListTile(
                                leading: const Icon(Icons.date_range),
                                title: const Text("Date Affectation"),
                                subtitle: Text(DateFormat.yMMMMd().format(group.dateAffectation)),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ]
    );
  }
}