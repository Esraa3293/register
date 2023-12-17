import 'package:flutter/material.dart';
import 'package:register/pages/home.dart';
import 'package:register/pages/sign_up.dart';
import 'package:register/widgets/email_form.dart';
import 'package:register/widgets/form_title.dart';
import 'package:register/widgets/password_form.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";
  var formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFBCCE7),
      body: Padding(
        padding: const EdgeInsets.only(top: 160.0),
        child: SingleChildScrollView(
          child: Column(
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
                          "Login",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
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
                            if (formKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.routeName);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF96798A),
                            minimumSize: const Size(20, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            "Submit",
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
                              "Don't have an account?",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, SignUp.routeName);
                                },
                                child: const Text(
                                  "Sign Up",
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
          ),
        ),
      ),
    );
  }
}
