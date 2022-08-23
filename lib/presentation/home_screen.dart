// import 'package:application11/presentation/maps_screen/maps_screen.dart';
// import 'package:application11/presentation/my_bookings_screen/my_bookings_screen.dart';
// import 'package:application11/presentation/my_stations_screen.dart';
// import 'package:application11/presentation/my_vehicle_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mapbox_turn_by_turn/core/utils/image_constant.dart';
import 'package:mapbox_turn_by_turn/mystation.dart';

import '../core/utils/color_constant.dart';
import '../screens/chargescreen.dart';
import 'maps_screen/maps_screen.dart';
import 'my_bookings_screen/my_bookings_screen.dart';
import 'my_stations_screen.dart';
import 'my_vehicle_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pc=new PageController();

  var children = [
   const ChargeScreen(),
    MyBookingsScreen(),
    MyVehicleScreen(),
    MyStationsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    pc.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        physics: NeverScrollableScrollPhysics(),
        children: children),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstant.teal700,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.imgHome, color: _selectedIndex == 0 ? Color(0xFF39FFDB) : Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.imgCalendar, color: _selectedIndex == 1 ? Color(0xFF39FFDB) : Colors.white),
            label: 'My Booking',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.imgCar, color: _selectedIndex == 2 ? Color(0xFF39FFDB): Colors.white),
            label: 'My Vehicle',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.imgStation, color: _selectedIndex == 3 ? Color(0xFF39FFDB) : Colors.white),
            label: 'My Stations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
