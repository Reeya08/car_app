import 'package:flutter/material.dart';
class CustomCarContainer extends StatelessWidget {
  const CustomCarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 190,
            width: 335,
            decoration: BoxDecoration(
              color: Color(0xffF5F6F8),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          Positioned(
              left: 30,
              child: Image.asset('assets/images/last_screen_car.png')),
          Positioned(
            top: 120,
            left: 10,
            child: Text(
              'AYGO',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 145,
            left: 10,
            child: Row(
              children: [
                Image.asset('assets/images/Gearbox.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'A/T',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/User Account.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '5',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/Car Door.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '4',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/Sun.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'A/C',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 180,
            child: Container(
              height: 78,
              width: 335,
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 10,
            child: Row(
              children: [
                Image.asset('assets/images/last_screen_tick.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Instant confirmation',
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 220,
            left: 10,
            child: Row(
              children: [
                Image.asset('assets/images/last_screen_tick.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Free cancelation',
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 190,
            left: 290,
            child: Text(
              'Day/',
              style: TextStyle(
                fontSize: 11,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 210,
            left: 290,
            child: Text(
              '\$250',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                color: Color(0xff2CB67D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}