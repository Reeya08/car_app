import 'package:car_app/presentation/views/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:car_app/presentation/views/chat/chat_view.dart';
import 'package:car_app/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:car_app/presentation/views/get_started/get_started_view.dart';
import 'package:car_app/presentation/views/last_view/last_view.dart';
import 'package:car_app/presentation/views/login/login_view.dart';
import 'package:car_app/presentation/views/profile/edit_profile_view.dart';
import 'package:car_app/presentation/views/profile/profile_view.dart';
import 'package:car_app/presentation/views/propose_parking_space/propose_parking_space_view.dart';
import 'package:car_app/presentation/views/setting/setting_view.dart';
import 'package:car_app/presentation/views/sign_up/sign_up_view.dart';
import 'package:car_app/presentation/views/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: SplashView(),
      // home: GetStartedView(),
      // home: SignUpView(),
      // home: LoginView(),
      // home: ForgotPasswordView(),
      // home: ProfileView(),
      // home: EditProfileView(),
      // home: SettingView(),
      // home: ChatView(),
      // home: ProposeParkingSpaceView(),
      // home: LastView(),
      // home: BottomNavigationView(),
    );
  }
}

