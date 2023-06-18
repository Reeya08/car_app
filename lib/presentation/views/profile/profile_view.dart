import 'package:car_app/presentation/elements/custom_profile_tile.dart';
import 'package:car_app/presentation/views/profile/edit_profile_view.dart';
import 'package:car_app/presentation/views/setting/setting_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Image.asset('assets/images/arrow_green.png'),
                  const SizedBox(
                    width: 110,
                  ),
                  const Text(
                    'Profile',
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
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                        color: const Color(0xff5AA5B5),
                        width: 2,
                      )),
                  child: Image.asset('assets/images/profile.png')),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Muhammad Ali',
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '@Muhammad Ali',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  color: Color(0xffA7A7A7),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                width: 115,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5AA5B5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      )),
                  onPressed: () {},
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => EditProfileView()));
                    },
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 12.5,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(0xffDFDFDF),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SettingView()));
                },
                leading: Container(
                  height: 24,
                  width: 24,
                  color: const Color(0xffEBFDFF),
                  child: Image.asset('assets/images/setting.png'),
                ),
                title: const Text(
                  'Setting',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Container(
                  height: 24,
                  width: 24,
                  color: const Color(0xffEBFDFF),
                  child: Image.asset('assets/images/leading_arrow_profile.png'),
                ),
              ),
              const ProfileTile(
                leadingImagePath: 'assets/images/billing_detail.png',
                title: 'Billing Detail',
              ),
              const ProfileTile(
                leadingImagePath: 'assets/images/Resource_management.png',
                title: 'User Management',
              ),
              const Divider(
                color: Color(0xffDFDFDF),
              ),
              const ProfileTile(
                leadingImagePath: 'assets/images/information.png',
                title: 'Information',
              ),
              const ProfileTile(
                  leadingImagePath: 'assets/images/logout.png', title: 'Log Out'),
            ],
          ),
        ),
      ),
    );
  }
}
