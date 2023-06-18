import 'package:car_app/presentation/elements/custom_edit_profile_field.dart';
import 'package:car_app/presentation/elements/custom_email_field.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/images/arrow_green.png'),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: const Color(0xff5AA5B5),
                            width: 2,
                          )),
                      child: Image.asset('assets/images/profile.png')),
                  Positioned(
                    top: 65,
                    left: 70,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff5AA5B5),
                      radius: 20,
                      child: Image.asset(
                        'assets/images/edit_profile_camera.png',
                        height: 12.4,
                        width: 16.29,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomEmailField(
                labelText: 'Name',
                hinText: 'Muhammad Ali',
                fillColor: Color(0xffF2F5FC),
                borderRadius: BorderRadius.circular(39.0),
                isFilled: true,
                borderSide: BorderSide.none,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomEmailField(
                labelText: 'Email Address',
                hinText: 'abc123@example.com',
                fillColor: Color(0xffF2F5FC),
                borderRadius: BorderRadius.circular(39.0),
                isFilled: true,
                borderSide: BorderSide.none,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomEmailField(
                labelText: 'Username',
                hinText: ' @MuhammadAli',
                fillColor: Color(0xffF2F5FC),
                borderRadius: BorderRadius.circular(39.0),
                isFilled: true,
                borderSide: BorderSide.none,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomEmailField(
                labelText: 'Password',
                hinText: 'Muhammad Ali',
                fillColor: Color(0xffF2F5FC),
                borderRadius: BorderRadius.circular(39.0),
                isFilled: true,
                borderSide: BorderSide.none,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomEmailField(
                labelText: 'Date of Birth',
                hinText: '30-1-2000',
                fillColor: Color(0xffF2F5FC),
                borderRadius: BorderRadius.circular(39.0),
                isFilled: true,
                borderSide: BorderSide.none,
                isObscure: true,
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Joined',
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        color: Color(0xffA7A7A7)),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    '28 July , 2022',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF2F5FC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          )),
                      onPressed: () {},
                      child: const Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 12.5,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFF0008),
                        ),
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
