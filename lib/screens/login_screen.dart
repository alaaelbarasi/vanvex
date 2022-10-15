import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'sign_up_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Image.asset(
                'assets/images/logo-no-background.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 60),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Color(0xFFEC407A), width: 3)),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.pink.shade400, width: 3),
                        ),
                        labelText: 'Enter Email',
                        hintText: 'Enter Your Email'),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Colors.blue.shade700, width: 3)),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.blue.shade700, width: 3),
                        ),
                        labelText: 'Enter Password',
                        hintText: 'Enter Your Password'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 70,
              width: 150,
              child: ElevatedButton(
                onPressed: () async {
                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    if (emailController.text == "rodaina@gmail.com" &&
                        passwordController.text == "password") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please Enter the Correct Data'),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please Enter all the Fields'),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade700),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                    ),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ))
          ],
        ),
      )),
    );
  }
}
