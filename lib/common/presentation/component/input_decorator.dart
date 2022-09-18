import 'package:flutter/material.dart';

InputDecoration loginInputDecoration(String? label, Icon? prefixIcon) {
  return InputDecoration(
    enabledBorder: _enabledOutlineInputBorder,
    focusedBorder: _focusedOutlineInputBorder,
    errorBorder: _errorOutlineInputBorder,
    focusedErrorBorder: _errorOutlineInputBorder,
    border: const OutlineInputBorder(),
    prefixIcon: prefixIcon,
    // labelText: label,
    hintText: label,
    hintStyle: const TextStyle(color: Colors.grey),
    filled: true,
    fillColor: Colors.white,
    errorStyle:  TextStyle(color: Colors.red.shade200), 
    contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
  );
}

const OutlineInputBorder _enabledOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: Colors.grey,
    ));

const OutlineInputBorder _focusedOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: Colors.grey,
    ));

const OutlineInputBorder _errorOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: Colors.grey
    ));