// ignore_for_file: use_build_context_synchronously

import 'package:familyforge_fitness_130/core/con_bar.dart';
import 'package:familyforge_fitness_130/core/urls.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_adadpad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> getFamilyforgeFitnessPknqwvm() async {
  final vjnavasv = await SharedPreferences.getInstance();
  return vjnavasv.getBool('nvapnvavsavasv') ?? false;
}

Future<void> setFamilyforgeFitnessPknqwvm() async {
  final vjnavasv = await SharedPreferences.getInstance();
  vjnavasv.setBool('nvapnvavsavasv', true);
}

Future<void> restoreFamilyforgeFitnessPknqwvm(BuildContext context) async {
  final currencyAdaptyRestoreResult =
      await FamilyforgeFitnessAdapty().familyforgeFitnessRestorePurchases();
  if (currencyAdaptyRestoreResult?.accessLevels['premium']?.isActive ?? false) {
    final vjnavasv = await SharedPreferences.getInstance();
    vjnavasv.setBool("nvapnvavsavasv", true);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const FFBottomBar()),
      (route) => false,
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Restore purchase'),
        content: const Text(
            'Your purchase is not found. Write to currencySupport: ${DocFF.s}'),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () => {Navigator.of(context).pop()},
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
