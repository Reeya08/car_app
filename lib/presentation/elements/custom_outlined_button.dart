import 'package:flutter/material.dart';
class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 320,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
        ),
        onPressed: (){}, child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath,height: 20,width: 20,),
          SizedBox(width: 10,),
          Text(text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      ),
    );
  }
}