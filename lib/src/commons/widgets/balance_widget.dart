import 'package:flutter/material.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key, required this.balanceValue}) : super(key: key);
  final String balanceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kGreyColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          children: [
            Text(
              "My Balance",
              style: Theme.of(context).textTheme.titleMedium!,
            ),
            const Spacer(),
            Text(
              balanceValue,
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          ],
        ),
      ),
    );
  }
}
