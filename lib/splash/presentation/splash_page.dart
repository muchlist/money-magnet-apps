import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: LinearProgressIndicator(
        color: kBlue,
      )),
    );
  }
}
