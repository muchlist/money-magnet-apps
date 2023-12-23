import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet/src/commons/widgets/balance_widget.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';
import 'package:money_magnet/src/commons/widgets/disable_glow.dart';
import 'package:money_magnet/src/commons/widgets/snackbar.dart';
import 'package:money_magnet/src/commons/widgets/pockets_widget.dart';
import 'package:money_magnet/src/features/pocket/application/pocket_notifier.dart';
import 'package:money_magnet/src/features/pocket/provider/providers.dart';
import 'package:money_magnet/src/routes/app_router.gr.dart';
import 'package:money_magnet/src/utils/strings.dart';

class PocketFragment extends StatelessWidget {
  const PocketFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PocketBody(),
    );
  }
}

class PocketBody extends ConsumerStatefulWidget {
  const PocketBody({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<PocketBody> createState() => _PocketBodyState();
}

class _PocketBodyState extends ConsumerState<PocketBody> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then(
        (value) => ref.read(pocketNotifierProvider.notifier).getPocketList());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pocketNotifierProvider);
    ref.listen<PocketState>(pocketNotifierProvider, (_, next) {
      next.maybeWhen(
          orElse: () {},
          failure: (_, failure) {
            failure.when(server: (msg) {
              showToastError(
                  context: context,
                  message: msg ?? 'unknown failure',
                  onTop: false);
            }, storage: () {
              showToastError(
                  context: context, message: 'storage failure', onTop: false);
            });
          });
    });

    final pocketCount = state.map(
        initial: (s) => 0,
        loading: (s) => s.pockets.length,
        success: (s) => s.pockets.length,
        failure: (s) => s.pockets.length // maybe + 1 for error tile,
        );

    return DisableGlow(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              "Pockets",
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
            padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
            sliver: SliverToBoxAdapter(
              child: BalanceWidget(
                balanceValue: state.maybeWhen(
                    success: (_, balanceInfo, __) => balanceInfo,
                    loading: (_, balanceInfo) => balanceInfo,
                    orElse: () => '0'),
                editors: const [],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3 / 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == pocketCount) {
                      return GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).push<String>(
                              const PocketAddRoute(),
                            );
                          },
                          child: const PocketWidgetButton());
                    }
                    return GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(
                            PocketRoute(pocketDetail: state.pockets[index]),
                          );
                        },
                        child: PocketWidget(
                          name: state.pockets[index].pocketName,
                          balance:
                              state.pockets[index].balance.toCurrencyString(),
                          icon: state.pockets[index].icon,
                        ));
                  },
                  childCount: pocketCount + 1,
                )),
          ),
        ],
      ),
    );
  }
}
