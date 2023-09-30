import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';
import 'package:money_magnet/src/utils/assets_const.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';
import 'package:money_magnet/src/commons/theme/ui_helper.dart';
import 'package:money_magnet/src/utils/strings.dart';

class SpendTileWidget extends StatelessWidget {
  const SpendTileWidget({Key? key, required this.detail}) : super(key: key);

  final Spend detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 52,
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: kGreyColor,
              blurRadius: 0.3,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              moneyBag,
              semanticsLabel: 'Pocket',
              width: 21,
            ),
            horizontalSpaceSmall,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail.name,
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
                Text(
                  detail.date.toString(),
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  detail.price.toCurrencyString(),
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
                Text(
                  detail.categoryName,
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
