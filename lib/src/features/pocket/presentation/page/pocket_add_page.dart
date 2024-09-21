import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/constant/pocket_icon.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';
import 'package:money_magnet/src/commons/theme/ui_helper.dart';
import 'package:money_magnet/src/commons/widgets/disable_glow.dart';
import 'package:money_magnet/src/commons/widgets/snackbar.dart';
import 'package:money_magnet/src/commons/widgets/input_decorator.dart';
import 'package:money_magnet/src/commons/widgets/white_button.dart';
import 'package:money_magnet/src/features/pocket/application/pocket_notifier.dart';
import 'package:money_magnet/src/features/pocket/presentation/provider/providers.dart';
import 'package:money_magnet/src/features/pocket/presentation/provider/text_controller_providers.dart';

@RoutePage()
class PocketAddPage extends StatelessWidget {
  const PocketAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Pocket",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: kBlackColor),
        ),
      ),
      body: const PocketAddPageBody(),
    );
  }
}

class PocketAddPageBody extends ConsumerStatefulWidget {
  const PocketAddPageBody({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<PocketAddPageBody> createState() => _PocketAddPageBodyState();
}

class _PocketAddPageBodyState extends ConsumerState<PocketAddPageBody> {
  final GlobalKey<FormState> _formAddPocketkey = GlobalKey<FormState>();
  int _selectedIconIndex = 0;

  void _addPocket() async {
    if (_formAddPocketkey.currentState?.validate() ?? false) {
      // Success
      String pocketName = ref.read(pocketNameControllerProvider).text;
      await ref
          .read(pocketNotifierProvider.notifier)
          .createPocket(pocketName, '', _selectedIconIndex + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pocketNotifierProvider);
    ref.listen<PocketState>(pocketNotifierProvider, (_, next) {
      next.maybeWhen(
          orElse: () {},
          success: (_, __, ___, ____) {
            AutoRouter.of(context).pop();
          },
          failure: (_, __, failure) {
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
            key: _formAddPocketkey,
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
            loading: (_, __, ___) =>
                const ButtonWLoading(title: "Sedang memuat..."),
            orElse: () => ButtonW(
              title: "Tambahkan",
              onPressed: _addPocket,
            ),
          ),
          verticalSpaceSmall,
        ],
      )),
    );
  }
}
