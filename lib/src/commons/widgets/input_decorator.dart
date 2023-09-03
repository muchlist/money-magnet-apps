import 'package:flutter/material.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';

InputDecoration mainInputDecoration(String? label, Icon? prefixIcon) {
  return InputDecoration(
    enabledBorder: _enabledOutlineInputBorder,
    focusedBorder: _focusedOutlineInputBorder,
    errorBorder: _errorOutlineInputBorder,
    focusedErrorBorder: _errorOutlineInputBorder,
    border: const OutlineInputBorder(),
    prefixIcon: prefixIcon,
    labelText: label,
    labelStyle: const TextStyle(color: kPrimaryColor),
    hintText: label,
    hintStyle: const TextStyle(color: Colors.grey),
    filled: true,
    fillColor: Colors.white,
    errorStyle: TextStyle(color: Colors.red.shade200),
    contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
  );
}

const OutlineInputBorder _enabledOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: Colors.grey,
    ));

const OutlineInputBorder _focusedOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: Colors.grey,
    ));

const OutlineInputBorder _errorOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.grey));
