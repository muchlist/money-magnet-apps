import 'package:flutter/material.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';

/// *  textInputType - The type of information for which to optimize the text input control.
/// *  hintText - Text that suggests what sort of input the field accepts.
/// *  prefixIcon - Pass Icon if required
/// *  defaultText - If there is predefined value is there for a text field
/// *  focusNode - Currently focus node
/// *  obscureText - Is Password field?
/// *  controller - Text controller
/// *  functionValidate - Validation function(currently I have used to check empty field)
/// *  parametersValidate - Value to validate
/// *  actionKeyboard - Keyboard action eg. next, done, search, etc
/// *  onSubmitField - Done click action
/// *  onFieldTap - On focus on TextField
class TextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final Widget? prefixIcon;
  final String defaultText;
  final FocusNode focusNode;
  final bool obscureText;
  final TextEditingController controller;
  final Function? functionValidate;
  final String parametersValidate;
  final TextInputAction actionKeyboard;
  final Function? onSubmitField;
  final Function? onFieldTap;

  const TextFormFieldWidget(
      {Key? key,
      required this.hintText,
      required this.focusNode,
      required this.textInputType,
      required this.defaultText,
      this.obscureText = false,
      required this.controller,
      required this.functionValidate,
      required this.parametersValidate,
      this.actionKeyboard = TextInputAction.next,
      required this.onSubmitField,
      required this.onFieldTap,
      required this.prefixIcon})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: kPrimaryColor,
      ),
      child: TextFormField(
        cursorColor: kPrimaryColor,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,
        focusNode: widget.focusNode,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        initialValue: widget.defaultText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
          isDense: true,
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.red,
              )),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
        controller: widget.controller,
        validator: (value) {
          if (widget.functionValidate != null) {
            String resultValidate =
                widget.functionValidate!(value, widget.parametersValidate);
            if (resultValidate.isNotEmpty) {
              return resultValidate;
            }
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if (widget.onSubmitField != null) widget.onSubmitField!();
        },
        onTap: () {
          if (widget.onFieldTap != null) widget.onFieldTap!();
        },
      ),
    );
  }
}

String? commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String? requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}

// void changeFocus(
//     BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
//   currentFocus.unfocus();
//   FocusScope.of(context).requestFocus(nextFocus);
// }

// How to Use
// Widget _buildPassword() {
//   return TextFormFieldWidget(
//     hintText: "Password",
//     obscureText: true,
//     textInputType: TextInputType.visiblePassword,
//     actionKeyboard: TextInputAction.done,
//     functionValidate: commonValidation,
//     controller: _passwordController,
//     focusNode: _passwordControllerFocus,
//     onSubmitField: () {},
//     parametersValidate: "Please enter password.",
//     prefixIcon: Icon(Icons.keyboard_hide),
//   );
// }
