import 'package:flutter/material.dart';
import 'package:uni_matrix/pesentation/constants/constant.dart';
import 'package:uni_matrix/pesentation/screen/dashboard/home_page.dart';
import 'package:uni_matrix/pesentation/widgets/textfield_container.dart';

class RegisterPageTwo extends StatelessWidget {
  // final String fullName, mobileNumber, password, otp;
  RegisterPageTwo({super.key});

  final _formKey = GlobalKey<FormState>();
  final _otpCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: MyConstants.appPadding,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      const Text('Create Account',
                          style: TextStyle(fontSize: 22)),
                      const Text('Sign up to Get Started',
                          style: TextStyle(fontSize: 18)),
                      const SizedBox(height: 15),
                      //
                      OutlinedTextFormField(
                        controller: _otpCode,
                        label: "Verification Code",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter OTP";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: MyConstants.bluishGradient,
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
                              'Next Page',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
