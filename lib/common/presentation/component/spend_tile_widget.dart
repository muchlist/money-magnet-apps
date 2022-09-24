import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_magnet/common/assets_helper/assets_const.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';
import 'package:money_magnet/common/presentation/component/ui_helper.dart';

class SpendTileWidget extends StatelessWidget {
  const SpendTileWidget({Key? key}) : super(key: key);

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
                  "Makan Siang",
                  style: Theme.of(context).textTheme.bodyText2!,
                ),
                Text(
                  "28 Agustus 2022",
                  style: Theme.of(context).textTheme.caption!,
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "- 40.000",
                  style: Theme.of(context).textTheme.bodyText2!,
                ),
                Text(
                  "Food",
                  style: Theme.of(context).textTheme.caption!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
