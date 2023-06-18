import 'package:car_app/presentation/elements/custom_elevated_button.dart';
import 'package:car_app/presentation/views/login/login_view.dart';
import 'package:car_app/presentation/views/sign_up/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../elements/custom_outlined_button.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/get_started_car.png',
                      ),
                    ),
                  ),
                  height: 300.0,
                ),
                Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.2),
                          const Color(0xffD9D9D9),
                        ],

                        stops: [0.4,2.0],
                      ),
                    ),),
              ],
            ),
            const SizedBox(height: 30,),
            const Text('Let’s Get Started',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'login or Signup to find \nbest ride for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30,),
             CustomButton(childText: 'Continue with Email', onPressed: () { Navigator.push(
                 context, MaterialPageRoute(builder: (context) => SignUpView())); },),
            const SizedBox(height: 20,),
            const CustomOutlinedButton(imagePath: 'assets/images/google.png', text: 'Continue with Google',),
            const SizedBox(height: 15,),
            const CustomOutlinedButton(imagePath: 'assets/images/facebook.png', text: 'Continue with Facebook',),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LoginView()));
                  },
                  child: const Text(
                    'login',style: TextStyle(
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
    );
  }
}
