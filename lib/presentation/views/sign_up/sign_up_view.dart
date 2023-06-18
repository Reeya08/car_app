import 'package:car_app/presentation/elements/custom_elevated_button.dart';
import 'package:car_app/presentation/elements/custom_outlined_button.dart';
import 'package:car_app/presentation/views/login/login_view.dart';
import 'package:car_app/presentation/views/profile/profile_view.dart';
import 'package:flutter/material.dart';

import '../../elements/custom_email_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 31,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Craete a new accont',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomEmailField(
                hinText: 'Email',
                prefixIcon: Image.asset('assets/images/email.png'), borderRadius: BorderRadius.circular(10.0),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomEmailField(
                hinText: 'Password',
                prefixIcon: Image.asset('assets/images/password.png'),
                isPasswordField: true, borderRadius: BorderRadius.circular(10.0),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomEmailField(
                hinText: 'Confirm Password',
                prefixIcon: Image.asset('assets/images/password.png'),
                borderRadius: BorderRadius.circular(10.0),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                childText: 'Sign Up',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileView()));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    color: Color(0xff5AA5B5),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5AA5B5),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Divider(
                      color: Color(0xff5AA5B5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomOutlinedButton(
                imagePath: 'assets/images/google.png',
                text: 'Continue with Google',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomOutlinedButton(
                imagePath: 'assets/images/facebook.png',
                text: 'Continue with Facebook',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginView()));
                    },
                    child: Text(
                      'login',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5AA5B5),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
