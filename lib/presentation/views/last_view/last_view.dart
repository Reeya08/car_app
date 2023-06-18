import 'package:car_app/presentation/elements/custom_car_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastView extends StatelessWidget {
  const LastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                height: 50,
                width: 335,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffix: Image.asset(
                      'assets/images/search.png',
                      height: 16,
                      width: 16,
                      color: Colors.black,
                    ),
                    fillColor: Color(0xffEAECF0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomCarContainer(),
            SizedBox(
              height: 80,
            ),
            CustomCarContainer(),
            SizedBox(
              height: 80,
            ),
            CustomCarContainer(),
          ],
        ),
      ),
    );
  }
}


