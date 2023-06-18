import 'package:car_app/presentation/views/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.childText,
    required this.onPressed,
  }) : super(key: key);
  final String childText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 320,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff5AA5B5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
        ),
         onPressed: onPressed,
         child: Text(childText,style: TextStyle(
        fontSize: 20,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w600,
      ),
      ),),
    );
  }
}
