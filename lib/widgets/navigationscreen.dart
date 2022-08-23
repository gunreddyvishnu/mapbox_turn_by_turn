import 'package:flutter/material.dart';
import 'package:flutter_mapbox_nav/flutter_mapbox_nav.dart';
import 'package:geolocator/geolocator.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({ Key? key }) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  String _platformVersion = 'Unknown';
  String _instruction = "";
  
  final _orign = WayPoint(
      name: "Kamineani",
      latitude: 17.3511,
      longitude: 78.5559);
       late MapBoxOptions _options;

         bool _isMultipleStop = false;
  double _distanceRemaining=0.0, _durationRemaining=0.0;
  late MapBoxNavigationViewController _controller;
  bool _routeBuilt = false;
  bool _isNavigating = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        startnavigation();
      
      },),

body: Container(
  color: Colors.grey,
  child: MapBoxNavigationView(
      options: _options,
      // onRouteEvent: _onEmbeddedRouteEvent,
      onCreated:
          (MapBoxNavigationViewController controller) async {
        _controller = controller;
        controller.initialize();
      }),
),

    );
  }



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialize();
  }


   Future<void> initialize() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    // _directions = MapBoxNavigation(onRouteEvent: _onEmbeddedRouteEvent);
    _options = MapBoxOptions(
      //initialLatitude: 36.1175275,
      //initialLongitude: -115.1839524,
        zoom: 15.0,
        tilt: 0.0,
        bearing: 0.0,
        enableRefresh: false,
        alternatives: true,
        voiceInstructionsEnabled: false,
        bannerInstructionsEnabled: false,
        allowsUTurnAtWayPoints: true,
        mode: MapBoxNavigationMode.drivingWithTraffic,
        units: VoiceUnits.imperial,
        mapStyleUrlDay: "mapbox://styles/gunreddyvishnu/cl46kfkev004115nky4453u9z",
       mapStyleUrlNight: "mapbox://styles/gunreddyvishnu/cl46kfkev004115nky4453u9z",
        simulateRoute: true,
        animateBuildRoute: true,
        // longPressDestinationEnabled: true,
        language: "en");

    String platformVersion;
    
    // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   platformVersion = await _directions.platformVersion;
    // } on PlatformException {
    //   platformVersion = 'Failed to get platform version.';
    // }

    // setState(() {
    //   _platformVersion = platformVersion;
    // });
  }


  Future<void> startnavigation() async {
    if (_routeBuilt) {
                              // _controller.clearRoute();
                            } else {





var mylocation=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);

                              var wayPoints = <WayPoint>[];
                              // wayPoints.add(_);
                              wayPoints.add(WayPoint(name: "mylocation", latitude: mylocation.latitude, longitude: mylocation.longitude));
                             wayPoints.add(_orign);
                              _isMultipleStop = wayPoints.length > 2;
                              _controller.buildRoute(
                                  wayPoints: wayPoints, options: _options).then((value)  {
        //  _controller.startNavigation();
          _controller.startNavigation(
            options: MapBoxOptions(
              initialLatitude: 36.1175275,
                     initialLongitude: -115.1839524,
                     zoom: 13.0,
                     tilt: 0.0,
                     bearing: 0.0,
                     enableRefresh: false,
                     alternatives: true,
                     voiceInstructionsEnabled: false,
                     bannerInstructionsEnabled: false,
                     allowsUTurnAtWayPoints: true,
                     mode: MapBoxNavigationMode.drivingWithTraffic,
                     mapStyleUrlDay: "mapbox://styles/gunreddyvishnu/cl46kfkev004115nky4453u9z",
                     mapStyleUrlNight: "mmapbox://styles/gunreddyvishnu/cl46kfkev004115nky4453u9z",
                     units: VoiceUnits.imperial,
                     simulateRoute: true,
                     language: "en"
            )
          );

                                  });
                            }
  }
}