import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/common/presentation/component/balance_widget.dart';
import 'package:money_magnet/common/presentation/component/disable_glow.dart';
import 'package:money_magnet/common/presentation/component/ui_helper.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME",
          style: Theme.of(context).textTheme.headline4!,
        ),
      ),
      body: DisableGlow(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: const [
                verticalSpaceMedium,
                BalanceWidget(
                  balanceValue: "500.0000",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
