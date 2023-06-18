import 'package:car_app/presentation/elements/custom_elevated_button.dart';
import 'package:car_app/presentation/elements/custom_email_field.dart';
import 'package:car_app/presentation/elements/custom_password_field.dart';
import 'package:car_app/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:car_app/presentation/views/profile/profile_view.dart';
import 'package:flutter/material.dart';

import '../../elements/custom_outlined_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Hi! Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Raleway',
                  fontSize: 31,
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
                'Login to your accont',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Raleway',
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
           CustomEmailField(hinText: '', prefixIcon: Image.asset('assets/images/email.png'), borderRadius: BorderRadius.circular(10.0),),
          const SizedBox(
            height: 10,
          ),
          const CustomPasswordField(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ForgotPasswordView()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Raleway',
                    fontSize: 11,
                    color: Color(0xff5AA5B5),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
           CustomButton(
            childText: 'Login', onPressed: () { Navigator.push(
               context, MaterialPageRoute(builder: (context) => ProfileView())); },
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
            height: 50,
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
            height: 70,
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
              const Text(
                'login',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5AA5B5),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
