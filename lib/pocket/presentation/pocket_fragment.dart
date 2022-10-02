import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet/common/presentation/component/balance_widget.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';
import 'package:money_magnet/common/presentation/component/disable_glow.dart';
import 'package:money_magnet/common/presentation/component/pockets_widget.dart';
import 'package:money_magnet/common/presentation/routes/app_router.gr.dart';

class PocketFragment extends ConsumerStatefulWidget {
  const PocketFragment({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PocketFragmentState();
}

class _PocketFragmentState extends ConsumerState<PocketFragment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PocketBody(),
    );
  }
}

class PocketBody extends StatelessWidget {
  const PocketBody({
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
              "Pockets",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
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
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2 / 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == 2) {
                    return const PocketWidgetButton();
                  }
                  return GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(
                          PocketRoute(pocketName: "Main Pocket"),
                        );
                      },
                      child: const PocketWidget());
                },
                childCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
