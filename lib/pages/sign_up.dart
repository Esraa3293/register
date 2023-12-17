import 'package:flutter/material.dart';
import 'package:register/pages/home.dart';
import 'package:register/pages/login.dart';
import 'package:register/widgets/email_form.dart';
import 'package:register/widgets/form_title.dart';
import 'package:register/widgets/password_form.dart';

class SignUp extends StatelessWidget {
  static const String routeName = 'signUp';
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  var formKey = GlobalKey<FormState>();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFBCCE7),
      body: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FormTitle("Username"),
                        const SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter username";
                            }
                            return null;
                          },
                          controller: name,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle:
                            const TextStyle(color: Color(0xFF02D8E9)),
                            prefixIcon: const Icon(Icons.person_outline),
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
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FormTitle("Phone"),
                        const SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter phone";
                            }
                            return null;
                          },
                          controller: phone,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: "Phone",
                            labelStyle:
                            const TextStyle(color: Color(0xFF02D8E9)),
                            prefixIcon: const Icon(Icons.phone),
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
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FormTitle("Email"),
                        const SizedBox(
                          height: 6,
                        ),
                        EmailForm(),
                        const SizedBox(
                          height: 20,
                        ),
                        FormTitle("Password"),
                        const SizedBox(
                          height: 6,
                        ),
                        PasswordForm(),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, HomeScreen.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF96798A),
                            minimumSize: const Size(20, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Have an account?",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, LoginScreen.routeName);
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: Colors.black54),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
