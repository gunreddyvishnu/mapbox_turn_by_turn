import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_turn_by_turn/screens/Homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/mapbox_handler.dart';
import '../main.dart';

import '../screens/review_ride.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    initializeLocationAndSave();
  }

  void initializeLocationAndSave() async {
    // Ensure all permissions are collected for Locations
    Location _location = Location();
    bool? _serviceEnabled;
    PermissionStatus? _permissionGranted;

    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
    }

    // Get the current user location
    LocationData _locationData = await _location.getLocation();
    LatLng currentLocation =
        LatLng(_locationData.latitude!, _locationData.longitude!);

    // Get the current user address
    String currentAddress =
        (await getParsedReverseGeocoding(currentLocation))['place'];

    // Store the user location in 
    SharedPreferences.getInstance().then((sharedPreferences) => {

   sharedPreferences.setDouble('latitude', _locationData.latitude!),
    sharedPreferences.setDouble('longitude', _locationData.longitude!),
    sharedPreferences.setString('current-address', currentAddress),
    });
 

    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) =>  HomePage()), (route) => false);
  }

  //  Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (_) =>
  //                   ReviewRide()));

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.arrow_swap,
            color: Colors.white,
            size: 120,
          ),
          Text(
            'Dabba Delivery',
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
