import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_magnet/common/assets_helper/assets_const.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';
import 'package:money_magnet/common/presentation/component/ui_helper.dart';

class PocketWidget extends StatelessWidget {
  const PocketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: screenWidthPercentage(context, percent: 44 / 100),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: kGreyColor,
            blurRadius: 0.3,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            SvgPicture.asset(
              moneyBag,
              semanticsLabel: 'Pocket',
              width: 37,
            ),
            const Spacer(),
            Text(
              "Main-Pocket",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.black),
            ),
            Text(
              "RP.300.000",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}
