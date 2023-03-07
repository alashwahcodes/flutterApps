import 'package:apii/screens/Surah.dart';
import 'package:flutter/material.dart';
import 'package:apii/screens/login.dart';
import '../customwidgets/m_button.dart';
import '../customwidgets/m_text_form_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(36, 62, 110, 255),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView(children: [
            Column(children: [
              Image.asset('images/quran.jpeg'),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Register",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    MtextFormField("First Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    MtextFormField("Last Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    MtextFormField("Email"),
                    const SizedBox(
                      height: 10,
                    ),
                    MtextFormField("password"),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Surah();
                      },
                    ),
                  );
                },
                child: Mbutton("Register"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Already have account? ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ],
              ),
            ]),
          ]),
        ));
  }
}
