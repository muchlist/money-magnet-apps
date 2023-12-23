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
    return Container(
      decoration: BoxDecoration(
          color: kGreyColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // UP
            Row(
              children: [
                Text(
                  "Balance",
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                const Spacer(),
                Text(
                  balanceValue,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              ],
            ),

            (editors.isNotEmpty)
                ? const Text("users :")
                : const SizedBox.shrink(),

            // DOWN
            Padding(
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
          ],
        ),
      ),
    );
  }
}
