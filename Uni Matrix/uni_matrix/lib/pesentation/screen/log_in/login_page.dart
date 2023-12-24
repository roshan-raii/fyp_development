import 'package:flutter/material.dart';
import 'package:uni_matrix/pesentation/constants/constant.dart';
import 'package:uni_matrix/pesentation/screen/dashboard/home_page.dart';
import 'package:uni_matrix/pesentation/widgets/password_field.dart';
import 'package:uni_matrix/pesentation/widgets/textfield_container.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: MyConstants.appPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipPath(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    color: Color.fromARGB(255, 163, 162, 157),
                  ),
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 61, 91, 250)),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      OutlinedTextFormField(
                        label: 'email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter email";
                          }
                          return null;
                        },
                        controller: _username,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      PasswordField(
                        passController: _password,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 111, 146, 243),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MyConstants.borderRadius),
                          color: const Color.fromARGB(255, 0, 104, 55),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const HomePage()));
                            }
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MyConstants.borderRadius),
                          gradient: MyConstants.bluishGradient,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
