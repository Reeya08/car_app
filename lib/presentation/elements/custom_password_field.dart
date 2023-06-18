import 'package:flutter/material.dart';
class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    Key? key,
    required this.hintText,
  }) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDFDFDF),
              width: 0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDFDFDF),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: Image.asset('assets/images/password.png'),
          suffixIcon: Image.asset('assets/images/hide_password.png'),
          hintText: hintText,hintStyle: TextStyle(
          color: Color(0xffDFDFDF),
          fontSize: 11,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        ),
      ),
    );
  }
}
