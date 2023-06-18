import 'package:car_app/presentation/views/last_view/last_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _currentIndex = 0;
  final List<Widget> _allScreens = [
    LastView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:  Colors.white,
        unselectedItemColor: const Color(0xff464646),
        backgroundColor: Color(0xff16161A),
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Image.asset('assets/images/bottom_navbar_discover.png'),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Image.asset('assets/images/bottom_navbar_history.png'),
          ),
          BottomNavigationBarItem(
            label: 'Saved',
            icon: Image.asset('assets/images/bottom_navbar_saved.png'),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Image.asset('assets/images/bottom_navbar_profile.png'),
          ),
        ],
      ),
      body: _allScreens.elementAt(_currentIndex),
    );
  }
}
