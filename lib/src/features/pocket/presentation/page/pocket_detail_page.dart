import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet/src/commons/data/page_state.dart';
import 'package:money_magnet/src/commons/provider/providers.dart';
import 'package:money_magnet/src/features/pocket/presentation/provider/providers.dart';
import 'package:money_magnet/src/features/pocket/presentation/widget/balance_widget.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';
import 'package:money_magnet/src/commons/widgets/disable_glow.dart';
import 'package:money_magnet/src/commons/widgets/spend_tile_widget.dart';
import 'package:money_magnet/src/features/pocket/domain/pocket.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';
import 'package:money_magnet/src/features/spend/presentation/provider/providers.dart';
import 'package:money_magnet/src/routes/app_router.gr.dart';

@RoutePage()
class PocketPage extends StatelessWidget {
  const PocketPage(this.pocketDetail, {Key? key}) : super(key: key);

  final Pocket pocketDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PocketPageBody(pocketDetail: pocketDetail),
      floatingActionButton: FloatingActionButton(
        child: const Icon(LineIcons.plus),
        onPressed: () {
          AutoRouter.of(context).push(
            SpendAddRoute(pocketID: pocketDetail.id),
          );
        },
      ),
    );
  }
}

class PocketPageBody extends ConsumerStatefulWidget {
  const PocketPageBody({
    Key? key,
    required this.pocketDetail,
  }) : super(key: key);

  final Pocket pocketDetail;

  @override
  ConsumerState<PocketPageBody> createState() => _PocketPageBodyState();
}

class _PocketPageBodyState extends ConsumerState<PocketPageBody> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) => ref
        .read(spendListNotifierProvider(widget.pocketDetail.id).notifier)
        .getSpendList(widget.pocketDetail.id));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // listener page state
    ref.listen<PageState>(pageStateNotifierProvider, (previous, next) {
      if (next.isDetailPageNeedUpdate) {
        Future.delayed(Duration.zero).then((value) => ref
            .read(pocketNotifierProvider.notifier)
            .getPocketDetail(widget.pocketDetail.id));

        ref
            .read(pageStateNotifierProvider.notifier)
            .setIsDetailPageNeedUpdate(false);
      }
    });

    final state = ref.watch(spendListNotifierProvider(widget.pocketDetail.id));

    final todaySpends = state.todaySpendItems();
    final notTodaySpends = state.notTodaySpendItems();

    return DisableGlow(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              widget.pocketDetail.pocketName,
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
          SliverPadding(
            padding:
                const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 20),
            sliver: SliverToBoxAdapter(
              child: Consumer(
                builder: ((context, ref, child) {
                  final pocketState = ref.watch(pocketNotifierProvider);

                  return BalanceWidget(
                    balanceValue: pocketState
                        .getBalanceByPocketIDFromList(widget.pocketDetail.id),
                    // balanceValue: widget.pocketDetail.balance.toCurrencyString(),
                    editors:
                        widget.pocketDetail.users.map((e) => e.name).toList(),
                  );
                }),
              ),
            ),
          ),
          // const SliverPadding( -- Search Bar ,
          //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //   sliver: SliverToBoxAdapter(
          //     child: Row(
          //       children: [
          //         Expanded(child: CustomSearchBar()),
          //         horizontalSpaceSmall,
          //         Icon(LineIcons.horizontalSliders),
          //       ],
          //     ),
          //   ),
          // ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today --",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    state.todaySpendMoney(),
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
                  Spend spend = todaySpends[index];
                  return SpendTileWidget(
                    detail: spend,
                  );
                },
                childCount: todaySpends.length,
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
                    "--",
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
                  Spend spend = notTodaySpends[index];
                  return SpendTileWidget(
                    detail: spend,
                  );
                },
                childCount: notTodaySpends.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
