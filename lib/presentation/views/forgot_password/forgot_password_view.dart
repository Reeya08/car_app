import 'package:car_app/presentation/elements/custom_elevated_button.dart';
import 'package:car_app/presentation/elements/custom_email_field.dart';
import 'package:flutter/material.dart';
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 70,),
            Row(
              children: [
                const Image(image: AssetImage('assets/images/arrow_black.png'),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Raleway',
                    fontSize: 31,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Enter to your emai to reset your\n password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Raleway',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
              CustomEmailField(hinText: 'Email', prefixIcon: Image.asset('assets/images/email.png'), borderRadius: BorderRadius.circular(10.0),),
            const SizedBox(height: 60,),
             CustomButton(childText: 'Get Link', onPressed: () {  },),
          ],
        ),
      ),
    );
  }
}
