import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/constant/pocket_icon.dart';
import 'package:money_magnet/src/commons/theme/ui_helper.dart';
import 'package:money_magnet/src/commons/widgets/disable_glow.dart';
import 'package:money_magnet/src/commons/widgets/snackbar.dart';
import 'package:money_magnet/src/commons/widgets/input_decorator.dart';
import 'package:money_magnet/src/commons/widgets/white_button.dart';
import 'package:money_magnet/src/features/pocket/presentation/provider/text_controller_providers.dart';

import '../../../../commons/theme/colors.dart';
import '../../application/spend_notifier.dart';
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

  void _addSpend() async {
    if (_formAddSpendkey.currentState?.validate() ?? false) {
      String pocketName = ref.read(pocketNameControllerProvider).text;

      // TODO
      SpendReqDTO payload = SpendReqDTO(
        pocketID: widget.pocketID,
        categoryID: "categoryID",
        name: "name",
        price: 0,
        isIncome: false,
        type: 0,
        date: "date",
        version: 0,
      );

      // Success
      await ref.read(sharedSpendNotifierProvider.notifier).createSpend(payload);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sharedSpendNotifierProvider);
    ref.listen<SpendState>(sharedSpendNotifierProvider, (_, next) {
      next.maybeWhen(
          orElse: () {},
          success: (_, __) {
            // TODO
            AutoRouter.of(context).pop();
          },
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

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: DisableGlow(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Kamu namakan apa dompet ini?",
              style: Theme.of(context).textTheme.headlineSmall!),
          verticalSpaceMedium,
          Form(
            key: _formAddSpendkey,
            child: TextFormField(
              style: Theme.of(context).textTheme.titleSmall!,
              textInputAction: TextInputAction.next,
              decoration: mainInputDecoration("Nama dompet", null),
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'nama tidak boleh kosong';
                }
                return null;
              },
              controller: ref.watch(pocketNameControllerProvider),
            ),
          ),
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
          state.maybeWhen(
            // TODO loading: (_, __) => const ButtonWLoading(title: "Sedang memuat..."),
            orElse: () => ButtonW(
              title: "Tambahkan",
              onPressed: _addSpend,
            ),
          ),
          verticalSpaceSmall,
        ],
      )),
    );
  }
}
