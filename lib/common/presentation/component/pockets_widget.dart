import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet/common/assets_helper/assets_const.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';
import 'package:money_magnet/common/presentation/component/ui_helper.dart';

class PocketWidget extends StatelessWidget {
  const PocketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: kGreyColor,
              blurRadius: 0.5,
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
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "RP.300.000",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PocketHomeWidget extends StatelessWidget {
  const PocketHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: screenWidthPercentage(context, percent: 35 / 100),
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
                  .titleMedium!
                  .copyWith(color: Colors.black),
            ),
            Text(
              "RP.300.000",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}

class PocketWidgetButton extends StatelessWidget {
  const PocketWidgetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFE4DDCF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.deepOrange,
              blurRadius: 0.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Icon(
                LineIcons.plusCircle,
                size: 45,
                color: Color(0xFFED991A),
              ),
              const Spacer(),
              Text(
                "Create Pocket",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
