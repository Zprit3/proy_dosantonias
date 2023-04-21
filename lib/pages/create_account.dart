import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proy_dosantonias/pallete.dart';
import 'package:proy_dosantonias/widgets/widgets.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'lib/images/BGsimple.png'),
        Scaffold(
          backgroundColor: const Color.fromARGB(120, 0, 0, 0),
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: size.width * 0.1,
              ),
              Stack(
                children: [
                  Center(
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 4,
                          sigmaY: 4,
                        ),
                        child: CircleAvatar(
                          radius: size.width * 0.15,
                          backgroundColor: Colors.grey[400]?.withOpacity(0.4),
                          child: Icon(
                            FontAwesomeIcons.user,
                            color: twoAWhite,
                            size: size.width * 0.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.07,
                    left: size.width * 0.56,
                    child: Container(
                      height: size.height * 0.1,
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                        color: twoAOrange,
                        shape: BoxShape.circle,
                        border: Border.all(color: twoAWhite, width: 2),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.arrowUp,
                        color: twoAWhite,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              Column(
                children: [
                  const TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'Nombre',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next),
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
                      inputAction: TextInputAction.next),
                  const PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Confirmar Contraseña',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.done),
                  const SizedBox(
                    height: 25,
                  ),
                  const RoundedButton(buttonName: 'Registrar'),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ya tienes una cuenta?',
                        style: loginBodyText,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text(
                          ' Iniciar Sesión',
                          style: loginBodyText.copyWith(
                              color: twoAYellow, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ]),
          ),
        )
      ],
    );
  }
}
