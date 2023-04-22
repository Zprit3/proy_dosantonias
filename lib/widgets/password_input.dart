import 'package:flutter/material.dart';
import 'package:proy_dosantonias/pallete.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction, 

  }) : super(key: key);


  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), 
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: twoASemiBlack),
                  borderRadius: BorderRadius.circular(16)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: twoAOrange),
                  borderRadius: BorderRadius.circular(16)),
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 32,
                  color: twoAWhite,
                ),
              ),
              hintText: hint,
              hintStyle: loginBodyText,
            ),
            obscureText: true,
            style: loginBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}
