import 'package:flutter/material.dart';
class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key, required this.leadingImagePath,
    required this.title,
  }) : super(key: key);
final String leadingImagePath;
final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 24,
        width: 24,
        color: Color(0xffEBFDFF),
        child: Image.asset(leadingImagePath),
      ),
      title: Text(title,style: TextStyle(
        fontSize: 13,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w600,
      ),),

    );
  }
}