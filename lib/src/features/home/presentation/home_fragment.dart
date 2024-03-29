import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet/src/commons/widgets/balance_widget.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';
import 'package:money_magnet/src/commons/widgets/disable_glow.dart';
import 'package:money_magnet/src/commons/widgets/pocket_monitor_widget.dart';
import 'package:money_magnet/src/commons/widgets/pockets_widget.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DisableGlow(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              "Home",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: kBlackColor),
            ),
            actions: const [
              Icon(
                LineIcons.circle,
                size: 35,
              ),
              SizedBox(width: 4),
              Icon(
                LineIcons.infoCircle,
                size: 35,
              ),
              SizedBox(width: 16),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 16, top: 8, right: 16),
            sliver: SliverToBoxAdapter(
              child: BalanceWidget(
                balanceValue: "Rp 500.0000",
                editors: [],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PocketHomeWidget(),
                  PocketMonitorWidget(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hari ini",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "- 200.000",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const SizedBox();
                  // return const SpendTileWidget(detail: null,);
                },
                childCount: 4, // 5 list items
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 16)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Agustus --",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "- 7.000.000",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const SizedBox();
                  // return const SpendTileWidget();
                },
                childCount: 5, // 5 list items
              ),
            ),
          ),
        ],
      ),
    );
  }
}
