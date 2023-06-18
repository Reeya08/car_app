import 'package:flutter/material.dart';
class CustomEditProfileField extends StatelessWidget {
  const CustomEditProfileField({
    Key? key,
    required this.hintText,
  }) : super(key: key);
final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,hintStyle: TextStyle(
          fontSize: 12,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
          color: Color(
              0xff868787)
      ),
        filled: true,
        fillColor: Color(0xffF2F5FC),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(39.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(39.0),
        ),
      ),
    );
  }
}
