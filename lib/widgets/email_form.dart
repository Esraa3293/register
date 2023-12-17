import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  EmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value!);
        if (value.isEmpty) {
          return "Please enter email";
        } else if (!emailValid) {
          return "Please enter valid email";
        }
        return null;
      },
      controller: email,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle:
        const TextStyle(color: Color(0xFF02D8E9)),
        prefixIcon: const Icon(Icons.email_outlined),
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
