import 'package:apii/screens/Surah.dart';
import 'package:flutter/material.dart';
import 'package:apii/customwidgets/m_button.dart';
import 'package:apii/screens/register.dart';
import '../customwidgets/m_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    "Login",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Column(
                  children: [
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
                child: Mbutton("Login"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Don't have account? ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Register();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Register",
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
