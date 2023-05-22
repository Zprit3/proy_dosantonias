import 'package:flutter/material.dart';
import 'package:proy_dosantonias/pages/pages.dart';

class LoginAndRegisterAuth extends StatefulWidget {
  const LoginAndRegisterAuth({super.key});

  @override
  State<LoginAndRegisterAuth> createState() => _LoginAndRegisterAuthState();
}

class _LoginAndRegisterAuthState extends State<LoginAndRegisterAuth> {
  //mostrar el login page
  bool showLoginPage = true;

  //conmutador entre el login y la pagina de registro
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return CreateAccount(onTap: togglePages);
    }
  }
}
