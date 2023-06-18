import 'package:flutter/material.dart';
class CustomChatTile extends StatelessWidget {
  const CustomChatTile({
    Key? key,
    required this.leadingImage,
    required this.title,
    required this.subTitle,
    required this.trailing,
    this.color = Colors.black,
  }) : super(key: key);
  final String leadingImage;
  final String title;
  final String subTitle;
  final String trailing;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(leadingImage),
      title: Text(
       title,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
      trailing:  Column(
        children: [
          Text(
            'September 9, 2013',
            style: TextStyle(
              fontSize: 9,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}