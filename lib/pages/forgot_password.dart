import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proy_dosantonias/pallete.dart';
import 'package:proy_dosantonias/widgets/background_image.dart';
import 'package:proy_dosantonias/widgets/rounded_button.dart';
import 'package:proy_dosantonias/widgets/text_field_input.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'lib/images/BGsimple.png'),
        Scaffold(
          backgroundColor: const Color.fromARGB(120, 0, 0, 0),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded, color: twoAWhite),
            ),
            title: const Text(
              'Recuperar Contraseña',
              style: loginBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Text(
                        'Ingresa tu email. Te enviaremos instrucciones para crear una nueva contraseña.',
                        style: loginBodyText),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const RoundedButton(buttonName: 'Enviar'),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
