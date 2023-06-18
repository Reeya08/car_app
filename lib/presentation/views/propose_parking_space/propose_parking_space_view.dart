import 'package:car_app/presentation/elements/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../elements/custom-propose_parking_field.dart';

class ProposeParkingSpaceView extends StatefulWidget {
  ProposeParkingSpaceView({Key? key}) : super(key: key);

  @override
  State<ProposeParkingSpaceView> createState() =>
      _ProposeParkingSpaceViewState();
}

class _ProposeParkingSpaceViewState extends State<ProposeParkingSpaceView> {
  bool _switchValue = false;

  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff5AA5B5),
        title: Text(
          'Propose Parking Space',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 18,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Stack(
                children: [
                  Container(
                    height: 206,
                    width: 335,
                    decoration: BoxDecoration(
                      color: Color(0xffEAECF0),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 140,
                    child: Image.asset(
                      'assets/images/choose_image.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 110,
                    child: Text(
                      'Choose Image',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5AA5B5),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width:2,),
                  Text(
                    'Do you want to leave immediately?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Semantics(
                    container: true,
                    child: Transform.scale(
                      transformHitTests: false,
                      scale: .5,
                      child: CupertinoSwitch(
                        value: _switchValue,
                        activeColor: const Color(0xff5AA5B5),
                        onChanged: (value) {
                          setState(
                                () {
                              _switchValue = value;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CustomProposeParkingField(hint: 'Select Planned Leave Date', suffix: 'assets/images/date.png',),
              SizedBox(height: 20,),
              CustomProposeParkingField(hint: 'Select Expected Time', suffix: 'assets/images/time.png',),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width:20,),
                  Text(
                    'Use Current Location for Parking Space',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Semantics(
                    container: true,
                    child: Transform.scale(
                      transformHitTests: false,
                      scale: .5,
                      child: CupertinoSwitch(
                        value: _switchValue,
                        activeColor: const Color(0xff5AA5B5),
                        onChanged: (value) {
                          setState(
                                () {
                              _switchValue = value;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CustomProposeParkingField(hint: 'Select Parking Location', suffix: 'assets/images/location.png',),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width:5,),
                  Text(
                    'Do you want to charge for proposing\nparking space?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Semantics(
                    container: true,
                    child: Transform.scale(
                      transformHitTests: false,
                      scale: .5,
                      child: CupertinoSwitch(
                        value: _switchValue,
                        activeColor: const Color(0xff5AA5B5),
                        onChanged: (value) {
                          setState(
                                () {
                              _switchValue = value;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 25),
                  Text(
                    'Contact Number',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                    hintText: '0345-1234567',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 30,),
                  Text(
                    'Select Vehicle Type',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffB4B4B4),
                      ),
                    ),
                    hintText: 'Select Vehicle Type',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(childText: 'Propose Parking Space', onPressed: () {  },),
            ],
          ),
        ),
      ),
    );
  }
}


