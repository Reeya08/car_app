import 'package:flutter/material.dart';
class CustomSettingTile extends StatelessWidget {
  const CustomSettingTile({
    Key? key,
    required this.leadingImage,
    required this.titleText,
  }) : super(key: key);
  final String leadingImage;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListTile(
        leading: Image.asset(leadingImage),
        title: Text(
          titleText,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
            color: Color(0xff5AA5B5),
          ),
        ),
        trailing: Image.asset('assets/images/setting_tile_arrow.png'),
      ),
    );
  }
}