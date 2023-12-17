import 'package:flutter/material.dart';

class PasswordForm extends StatelessWidget {
  TextEditingController password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  PasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        // bool passwordValid = RegExp(
        //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        //     .hasMatch(value!);
        if (value == null || value.isEmpty) {
          return "Please enter password";
        }
        // else if (!passwordValid) {
        //   return "Please enter valid password*";
        // }
        return null;
      },
      controller: password,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        labelStyle:
        const TextStyle(color: Color(0xFF02D8E9)),
        prefixIcon: const Icon(Icons.password),
        prefixIconColor: const Color(0xFF02D8E9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
          const BorderSide(color: Color(0xFF62E8F1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
          const BorderSide(color: Color(0xFF62E8F1)),
        ),
      ),
      cursorColor: const Color(0xFF62E8F1),
    );
  }
}
