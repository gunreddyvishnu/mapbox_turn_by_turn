// import 'package:flutter/material.dart';
// import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
// import 'package:google_api_headers/google_api_headers.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:google_maps_webservice/places.dart';
//
//
//
// class Home extends StatefulWidget{
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   String googleApikey = "AIzaSyDq5PevsIS_QtEHAajNtUXIarbIfkFbdmw";
//   GoogleMapController? mapController; //contrller for Google map
//   CameraPosition? cameraPosition;
//   LatLng startLocation = LatLng(27.6602292, 85.308027);
//   String location = "Search Location";
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           title: Text("Place Search Autocomplete Google Map"),
//           backgroundColor: Colors.deepPurpleAccent,
//         ),
//         body: Stack(
//             children:[
//
//               GoogleMap( //Map widget from google_maps_flutter package
//                 zoomGesturesEnabled: true, //enable Zoom in, out on map
//                 initialCameraPosition: CameraPosition( //innital position in map
//                   target: startLocation, //initial position
//                   zoom: 14.0, //initial zoom level
//                 ),
//                 mapType: MapType.normal, //map type
//                 onMapCreated: (controller) { //method called when map is created
//                   setState(() {
//                     mapController = controller;
//                   });
//                 },
//               ),
//
//
//
//               //search autoconplete input
//
//
//             ]
//         )
//     );
//   }
// }