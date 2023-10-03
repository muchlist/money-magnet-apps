import 'package:flutter/material.dart';

ScaffoldFeatureController showToastError({
  required BuildContext context,
  required String message,
  bool onTop = true,
}) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.red.shade300,
    duration: const Duration(seconds: 5),
    action: SnackBarAction(
      label: 'close',
      textColor: Colors.white,
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

ScaffoldFeatureController showToastSuccess({
  required BuildContext context,
  required String message,
  bool onTop = true,
}) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.green.shade300,
    duration: const Duration(seconds: 5),
    action: SnackBarAction(
      label: 'close',
      textColor: Colors.white,
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

ScaffoldFeatureController showToastWarning({
  required BuildContext context,
  required String message,
  bool onTop = true,
}) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.deepOrange.shade400,
    duration: const Duration(seconds: 5),
    action: SnackBarAction(
      label: 'close',
      textColor: Colors.white,
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
