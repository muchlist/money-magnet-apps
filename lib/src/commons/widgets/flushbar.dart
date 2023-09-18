import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Flushbar<dynamic> showToastError(
    {required BuildContext context,
    required String message,
    bool onTop = true}) {
  return Flushbar<dynamic>(
    message: message,
    duration: const Duration(seconds: 5),
    backgroundColor: Colors.red.shade300,
    flushbarPosition: onTop ? FlushbarPosition.TOP : FlushbarPosition.BOTTOM,
    flushbarStyle: FlushbarStyle.GROUNDED,
  )..show(context);
}

Flushbar<dynamic> showToastSuccess(
    {required BuildContext context,
    required String message,
    bool onTop = true}) {
  return Flushbar<dynamic>(
    message: message,
    duration: const Duration(seconds: 5),
    backgroundColor: const Color(0xFF2AAF61),
    flushbarPosition: onTop ? FlushbarPosition.TOP : FlushbarPosition.BOTTOM,
    flushbarStyle: FlushbarStyle.GROUNDED,
  )..show(context);
}

Flushbar<dynamic> showToastWarning(
    {required BuildContext context,
    required String message,
    bool onTop = true}) {
  return Flushbar<dynamic>(
    message: message,
    duration: const Duration(seconds: 5),
    backgroundColor: Colors.deepOrange.shade400,
    flushbarPosition: onTop ? FlushbarPosition.TOP : FlushbarPosition.BOTTOM,
    flushbarStyle: FlushbarStyle.GROUNDED,
  )..show(context);
}