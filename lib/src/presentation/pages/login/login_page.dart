import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfire_ui/auth.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Iniciar Sesión")),
      body: SignInScreen(
          subtitleBuilder: (context, action) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                action == AuthAction.signIn
                    ? 'Bienvenido a TuTrainer Trainers app, entra a tu cuenta para continuar'
                    : 'Bienvenido a TuTrainer Trainers app, crea una cuenta para continuar ',
              ),
            );
          },
          showAuthActionSwitch: false,
          // footerBuilder: (context, _) {
          //   return Padding(
          //     padding: EdgeInsets.only(top: 16),
          //     child: Column(
          //       children: [
          //         TextButton(
          //             onPressed: () {
          //               ref.read(authServiceProvider).loginAsTrainer("1");
          //             },
          //             child: Text("Login as Trainer1")),
          //         TextButton(
          //             onPressed: () =>
          //                 ref.read(authServiceProvider).loginAsTrainer("0"),
          //             child: Text("Login as Trainer0")),
          //       ],
          //     ),
          //   );
          // },
          headerBuilder: (context, constraints, _) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/logo.png"),
            );
          },
          providerConfigs: [
            GoogleProviderConfiguration(
                clientId:
                    "107114791691-3atrfkldi4feffc0kq3af39po7mg2icr.apps.googleusercontent.com"),
            EmailProviderConfiguration(),
          ]),
    );
  }
}
