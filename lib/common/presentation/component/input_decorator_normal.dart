import 'package:flutter/material.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';

InputDecoration normalInputDecoration(String? label, Icon? prefixIcon) {
  return InputDecoration(
    enabledBorder: _enabledOutlineInputBorder,
    focusedBorder: _focusedOutlineInputBorder,
    errorBorder: _errorOutlineInputBorder,
    focusedErrorBorder: _errorOutlineInputBorder,
    border: const OutlineInputBorder(),
    prefixIcon: prefixIcon,
    // labelText: label,
    hintText: label,
    hintStyle: const TextStyle(color: kBlackColor, fontSize: 12),
    filled: true,
    fillColor: kBlueGreyColor,
    errorStyle: TextStyle(color: Colors.red.shade200),
    contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
  );
}

const OutlineInputBorder _enabledOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
    borderSide: BorderSide(
      color: Colors.white,
    ));

const OutlineInputBorder _focusedOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
    borderSide: BorderSide(
      color: Colors.white,
    ));

const OutlineInputBorder _errorOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
    borderSide: BorderSide(color: Colors.white));
