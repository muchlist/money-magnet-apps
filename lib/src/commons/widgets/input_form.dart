import 'package:flutter/material.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';

class InputFormField extends StatelessWidget {
  final bool enabled;
  final Widget? inputPrefix;
  final Widget? inputSuffix;
  final String label;
  final Widget? labelPrefix;
  final Widget? labelSuffix;
  final bool isRequired;
  final bool isPassword;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function()? onFieldTap;
  final void Function(String)? onFieldSubmit;
  final void Function(String)? onFieldChange;
  final FocusNode? focusNode;

  const InputFormField({
    Key? key,
    this.enabled = true,
    this.inputPrefix,
    this.inputSuffix,
    required this.label,
    this.labelPrefix,
    this.labelSuffix,
    this.isRequired = false,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    required this.controller,
    this.validator,
    this.onFieldTap,
    this.onFieldSubmit,
    this.onFieldChange,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Nama*
        Row(
          children: [
            labelPrefix ?? Container(),
            Expanded(
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: label,
                  style: const TextStyle(
                    color: kTextColor,
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    if (isRequired)
                      const TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            labelSuffix ?? Container(),
          ],
        ),
        // textField with bottom border
        TextFormField(
          enabled: enabled,
          controller: controller,
          obscureText: isPassword,
          keyboardType: textInputType,
          validator: validator,
          onTap: onFieldTap,
          onFieldSubmitted: onFieldSubmit,
          onChanged: onFieldChange,
          focusNode: focusNode,
          decoration: enabled == false
              ? InputDecoration(
                  prefix: inputPrefix,
                  // grey background
                  filled: true,
                  fillColor: kTextColor.withOpacity(0.3),
                  // border
                  hintText: label,

                  hintStyle: TextStyle(
                    color: kTextColor.withOpacity(0.5),
                    fontSize: 12,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kTextColor.withOpacity(0.3),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kBlue,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kTextColor.withOpacity(0.3),
                    ),
                  ),
                )
              : InputDecoration(
                  prefix: inputPrefix,
                  hintText: label,
                  hintStyle: const TextStyle(
                    color: kTextColor,
                    fontSize: 12,
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kTextColor,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kBlue,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
