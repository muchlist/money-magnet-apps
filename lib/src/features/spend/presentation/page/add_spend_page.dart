import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/constant/pocket_icon.dart';
import 'package:money_magnet/src/commons/provider/providers.dart';
import 'package:money_magnet/src/commons/theme/ui_helper.dart';
import 'package:money_magnet/src/commons/widgets/disable_glow.dart';
import 'package:money_magnet/src/commons/widgets/snackbar.dart';
import 'package:money_magnet/src/commons/widgets/input_decorator.dart';
import 'package:money_magnet/src/commons/widgets/white_button.dart';
import 'package:money_magnet/src/features/spend/application/spend_create_notifier.dart';
import 'package:money_magnet/src/features/spend/presentation/provider/text_controller_providers.dart';

import '../../../../commons/theme/colors.dart';
import '../../data/spend_dto.dart';
import '../provider/providers.dart';

@RoutePage()
class SpendAddPage extends StatelessWidget {
  const SpendAddPage({Key? key, required this.pocketID}) : super(key: key);

  final String pocketID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Transaction",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: kBlackColor),
        ),
      ),
      body: SpendAddPageBody(pocketID),
    );
  }
}

class SpendAddPageBody extends ConsumerStatefulWidget {
  const SpendAddPageBody(
    this.pocketID, {
    Key? key,
  }) : super(key: key);

  final String pocketID;

  @override
  ConsumerState<SpendAddPageBody> createState() => _SpendAddPageBodyState();
}

class _SpendAddPageBodyState extends ConsumerState<SpendAddPageBody> {
  final GlobalKey<FormState> _formAddSpendkey = GlobalKey<FormState>();
  int _selectedIconIndex = 0;
  final int _selectedType = 0;
  final String _spendDate = "2023-09-28T19:24:31.777716Z";

  void _addSpend() async {
    if (_formAddSpendkey.currentState?.validate() ?? false) {
      String spendName = ref.read(spendNameControllerProvider).text;
      String spendPrice = ref.read(spendPriceControllerProvider).text;

      SpendReqDTO payload = SpendReqDTO(
        pocketID: widget.pocketID,
        categoryID:
            "26bd6a51-a75c-48ea-8f26-fd18e6d5fbdf", // TODO category getter
        name: spendName,
        price: int.parse(spendPrice),
        isIncome: true, // TODO category getter
        type: _selectedType,
        date: _spendDate,
      );

      await ref.read(spendCreateNotifierProvider.notifier).createSpend(payload);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(spendNotifierProvider(widget.pocketID));
    ref.listen<SpendCreateState>(spendCreateNotifierProvider, (_, next) {
      next.maybeWhen(
          orElse: () {},
          success: (spend) {
            ref
                .read(pageStateNotifierProvider.notifier)
                .setIsDetailPageNeedUpdate(true);

            // this logic can be moved to logic, but must called ref
            ref
                .read(spendListNotifierProvider(widget.pocketID).notifier)
                .addSpend(spend);

            AutoRouter.of(context).pop();
          },
          failure: (failure) {
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

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: DisableGlow(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          verticalSpaceMedium,
          Row(
            children: [
              Text("Pengeluaran",
                  style: Theme.of(context).textTheme.headlineSmall!),
              Text(" | ", style: Theme.of(context).textTheme.headlineSmall!),
              Text("Pemasukan",
                  style: Theme.of(context).textTheme.headlineSmall!),
            ],
          ),
          verticalSpaceMedium,
          Form(
              key: _formAddSpendkey,
              child: Column(
                children: [
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall!,
                    textInputAction: TextInputAction.next,
                    decoration: mainInputDecoration("Nama transaksi", null),
                    validator: (String? text) {
                      if (text == null || text.isEmpty) {
                        return 'nama pengeluaran tidak boleh kosong';
                      }
                      return null;
                    },
                    controller: ref.watch(spendNameControllerProvider),
                  ),
                  verticalSpaceSmall,
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall!,
                    textInputAction: TextInputAction.next,
                    decoration: mainInputDecoration("Nominal", null),
                    validator: (String? text) {
                      if (text == null || text.isEmpty) {
                        return 'nominal tidak boleh kosong';
                      }
                      return null;
                    },
                    controller: ref.watch(spendPriceControllerProvider),
                  ),
                ],
              )),
          verticalSpaceSmall,
          SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getIconList().length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIconIndex = index;
                      });
                    },
                    child: Container(
                      width: 60.0, // Sesuaikan dengan lebar yang Anda inginkan
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: _selectedIconIndex == index
                              ? Colors.lightGreen
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        getIcon(index + 1),
                        style: const TextStyle(
                            fontSize: 24.0), // Sesuaikan ukuran teks
                      ),
                    ),
                  );
                }),
          ),
          verticalSpaceSmall,
          Consumer(builder: ((context, ref, child) {
            final state = ref.watch(spendCreateNotifierProvider);
            return state.maybeWhen(
              loading: () => const ButtonWLoading(title: "Sedang memuat..."),
              orElse: () => ButtonW(
                title: "Tambahkan",
                onPressed: _addSpend,
              ),
            );
          })),
          verticalSpaceSmall,
        ],
      )),
    );
  }
}
