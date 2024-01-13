import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    Key? key,
    required this.balanceValue,
    required this.editors,
  }) : super(key: key);
  final String balanceValue;
  final List<String> editors;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        color: kGreyColor, // Change the color of the border as needed
        strokeWidth: 1,
        dashPattern: const [3, 3],
        radius: const Radius.circular(8),
        borderType: BorderType.RRect,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // UP
                Row(
                  children: [
                    Text(
                      "Balance",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      balanceValue,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                (editors.isNotEmpty && editors.length > 1)
                    ? const Text("users :")
                    : const SizedBox.shrink(),

                // DOWN
                (editors.isNotEmpty && editors.length > 1)
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Wrap(
                          children: editors
                              .map((e) => Chip(
                                    label: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    backgroundColor: Colors.green,
                                  ))
                              .toList(),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ));
  }
}
