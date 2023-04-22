// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proy_dosantonias/pallete.dart';
import 'package:proy_dosantonias/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  //controller texto
  /*final emailController = TextEditingController();
  final passwordController = TextEditingController();*/

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(
          image: 'lib/images/BGbasic.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            Flexible(
              child: Center(
                child: Image.asset(
                  'lib/images/icoMain.png',
                  height: 230,
                  width: 230,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TextInputField(
                  icon: FontAwesomeIcons.envelope,
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                const PasswordInput(
                  icon: FontAwesomeIcons.lock,
                  hint: 'Contraseña',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.done,
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: loginBodyText,
                  ),
                ),
                const RoundedButton(
                  buttonName: 'Iniciar Sesión',
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'CreateAccount'),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: twoAOrange))),
                child: const Text(
                  'Crea un nuevo Usuario',
                  style: loginBodyText,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           
          ]),
        )
      ],
    );
  }
}
