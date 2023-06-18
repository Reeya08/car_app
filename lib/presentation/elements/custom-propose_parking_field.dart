import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class CustomProposeParkingField extends StatelessWidget {
  const CustomProposeParkingField({
  super.key,
  required this.hint,
  required this.suffix,
  });
  final String hint;
  final String suffix;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(6),
      dashPattern: [8,8,8,8],
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        child: SizedBox(
          height: 60,
          width: 300,
          child: TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
              ),
              suffixIcon: InkWell(
                // autofocus: true,
                  child: Image.asset(suffix,)),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}