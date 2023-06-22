import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/auth/application/auth_notifier.dart';
import 'package:money_magnet/auth/shared/controller_providers.dart';
import 'package:money_magnet/auth/shared/providers.dart';
import 'package:money_magnet/common/presentation/component/disable_glow.dart';
import 'package:money_magnet/common/presentation/component/flushbar.dart';
import 'package:money_magnet/common/presentation/component/input_decorator.dart';
import 'package:money_magnet/common/presentation/component/ui_helper.dart';
import 'package:money_magnet/common/presentation/component/white_button.dart';
import 'package:money_magnet/common/presentation/routes/app_router.gr.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: DisableGlow(
            child: SingleChildScrollView(
              child: LoginBody(),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginBody extends ConsumerStatefulWidget {
  const LoginBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginBodyState();
}

class _LoginBodyState extends ConsumerState<LoginBody> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeWhen(
          orElse: () {},
          authenticated: () {
            AutoRouter.of(context).replace(const NavigationRoute());
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

    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          verticalSpaceLarge,
          verticalSpaceLarge,

          Text(
            'Welcome to\nMoney Magnet',
            style: Theme.of(context).textTheme.headlineMedium!,
            textAlign: TextAlign.left,
          ),

          SizedBox(
            height: screenHeightPercentage(context, percent: 0.10),
          ),

          Text(
            'Login',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.grey),
            textAlign: TextAlign.left,
          ),

          verticalSpaceMedium,
          // LOGIN text edit =====================================
          TextFormField(
            style: Theme.of(context).textTheme.titleSmall!,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: mainInputDecoration("Email", null),
            validator: (String? text) {
              if (text == null || text.isEmpty) {
                return 'email tidak boleh kosong';
              }
              // if (!text.isValidEmail()) {
              //   return 'email tidak valid';
              // }
              return null;
            },
            controller: ref.watch(emailControllerProvider),
          ),
          verticalSpaceSmall,
          // PASSWORD text edit ================================
          TextFormField(
            style: Theme.of(context).textTheme.titleSmall!,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: mainInputDecoration("Password", null),
            validator: (String? text) {
              if (text == null || text.isEmpty) {
                return 'password tidak boleh kosong';
              }
              return null;
            },
            controller: ref.watch(passwordControllerProvider),
          ),

          verticalSpaceLarge,

          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  ref.read(authNotifierProvider.notifier).toggleLoading();
                },
                child: Text(
                  "Forget password ?",
                  style: Theme.of(context).textTheme.titleSmall!,
                )),
          ),
          // Button or Progress indicator
          state.maybeWhen(
            loading: () => const ButtonWLoading(title: "Sedang memuat..."),
            authenticated: () => ButtonW(
              title: "Ok",
              onPressed: () {},
            ),
            orElse: () => ButtonW(
              title: "Masuk",
              onPressed: _login,
            ),
          ),
          verticalSpaceSmall,
        ],
      ),
    );
  }

  void _login() async {
    if (_formkey.currentState?.validate() ?? false) {
      // Success
      String email = ref.read(emailControllerProvider).text;
      String password = ref.read(passwordControllerProvider).text;
      await ref.read(authNotifierProvider.notifier).signIn(email, password);
    }
  }
}
