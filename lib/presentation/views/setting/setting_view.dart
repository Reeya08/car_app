import 'package:car_app/presentation/elements/custom_setting_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool _switchValue = false;
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5AA5B5),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Image.asset(
                'assets/images/arrow_green.png',
                color: Colors.white,
              ),
              const SizedBox(
                width: 80,
              ),
              const Text(
                'Setting',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            height: 633,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/notification 1.png'),
                    title: const Text(
                      'Notification',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5AA5B5),
                      ),
                    ),
                    trailing: Semantics(
                      container: true,
                      child: Transform.scale(
                        transformHitTests: false,
                        scale: .5,
                        child: CupertinoSwitch(
                          value: _switchValue,
                          activeColor: const Color(0xff5AA5B5),
                          onChanged: (value) {
                            setState(
                              () {
                                _switchValue = value;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const CustomSettingTile(
                      leadingImage: 'assets/images/setting_privacy.png',
                      titleText: 'Privacy Policy'),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const CustomSettingTile(
                      leadingImage: 'assets/images/setting_terms_conditions.png',
                      titleText: 'Terms & Conditions'),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const CustomSettingTile(
                      leadingImage: 'assets/images/setting_share.png',
                      titleText: 'Share with your friends'),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const CustomSettingTile(
                      leadingImage: 'assets/images/setting_about.png',
                      titleText: 'About Us'),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const CustomSettingTile(
                      leadingImage: 'assets/images/setting_help.png',
                      titleText: 'Help'),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const CustomSettingTile(
                      leadingImage: 'assets/images/setting_rate_us.png',
                      titleText: 'Rate this app'),
                  const Divider(
                    color: Color(0xffDFDFDF),
                  ),
                  const SizedBox(height: 120,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      Stack(
                        // clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(29.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xff5AA5B5).withOpacity(0.5),
                                  blurRadius: 9,
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0xff5AA5B5),
                            radius: 20,
                            child: Image.asset('assets/images/setting_logout.png'),
                          ),
                          const Positioned(
                            top: 14,
                            right: 7,
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5AA5B5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
