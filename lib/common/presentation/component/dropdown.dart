import 'package:flutter/material.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';

class DropdownContainer extends StatelessWidget {
  const DropdownContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(color: kBlueGreyColor),
      child: DropdownButtonHideUnderline(child: child),
    );
  }
}
