// // import 'package:flutter/material.dart';
// // import 'package:flutter_dotenv/flutter_dotenv.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:mapbox_turn_by_turn/screens/emb.dart';
// // import 'package:shared_preferences/shared_preferences.dart';

// // import 'ui/splash.dart';

// // late SharedPreferences sharedPreferences;

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   sharedPreferences = await SharedPreferences.getInstance();
// //   await dotenv.load(fileName: "assets/config/.env");
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         title: 'Dabba Delivery',
// //         debugShowCheckedModeBanner: false,
// //         theme: ThemeData(
// //             primarySwatch: Colors.indigo,
// //             textTheme:
// //                 GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)),
// //         // home: const Splash()
// //         home: EmbeddedView(),
        
// //         );
// //   }
// // }


// // 









// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:flutter/services.dart';
// import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
// // import 'package:flutter_mapbox_navigation/library.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String _platformVersion = 'Unknown';
//   String _instruction = "";
//   final _origin = WayPoint(
//       name: "Way Point 1",
//       latitude: 38.9111117447887,
//       longitude: -77.04012393951416);
//   final _stop1 = WayPoint(
//       name: "Way Point 2",
//       latitude: 38.91113678979344,
//       longitude: -77.03847169876099);
//   final _stop2 = WayPoint(
//       name: "Way Point 3",
//       latitude: 38.91040213277608,
//       longitude: -77.03848242759705);
//   final _stop3 = WayPoint(
//       name: "Way Point 4",
//       latitude: 38.909650771013034,
//       longitude: -77.03850388526917);
//   final _stop4 = WayPoint(
//       name: "Way Point 5",
//       latitude: 38.90894949285854,
//       longitude: -77.03651905059814);

//   late MapBoxNavigation _directions;
//   late MapBoxOptions _options;

//   bool _isMultipleStop = false;
//   double _distanceRemaining=0.0, _durationRemaining=0.0;
//   late MapBoxNavigationViewController _controller;
//   bool _routeBuilt = false;
//   bool _isNavigating = false;

//   @override
//   void initState() {
//     super.initState();
//     initialize();
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initialize() async {
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     _directions = MapBoxNavigation(onRouteEvent: _onEmbeddedRouteEvent);
//     _options = MapBoxOptions(
//         //initialLatitude: 36.1175275,
//         //initialLongitude: -115.1839524,
//         zoom: 15.0,
//         tilt: 0.0,
//         bearing: 0.0,
//         enableRefresh: false,
//         alternatives: true,
//         voiceInstructionsEnabled: true,
//         bannerInstructionsEnabled: true,
//         allowsUTurnAtWayPoints: true,
//         mode: MapBoxNavigationMode.drivingWithTraffic,
//         units: VoiceUnits.imperial,
//         simulateRoute: false,
//         animateBuildRoute: true,
//         longPressDestinationEnabled: true,
//         language: "en");

//     String platformVersion;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       platformVersion = await _directions.platformVersion;
//     } on PlatformException {
//       platformVersion = 'Failed to get platform version.';
//     }

//     setState(() {
//       _platformVersion = platformVersion;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Center(
//           child: Column(children: <Widget>[
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text('Running on: $_platformVersion\n'),
//                     Container(
//                       color: Colors.grey,
//                       width: double.infinity,
//                       child: Padding(
//                         padding: EdgeInsets.all(10),
//                         child: (Text(
//                           "Full Screen Navigation",
//                           style: TextStyle(color: Colors.white),
//                           textAlign: TextAlign.center,
//                         )),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           child: Text("Start A to B"),
//                           onPressed: () async {
//                             var wayPoints = <WayPoint>[];
//                             wayPoints.add(_origin);
//                             wayPoints.add(_stop1);

//                             await _directions.startNavigation(
//                                 wayPoints: wayPoints,
//                                 options: MapBoxOptions(
//                                     mode:
//                                         MapBoxNavigationMode.drivingWithTraffic,
//                                     simulateRoute: false,
//                                     language: "en",
//                                     units: VoiceUnits.metric));
//                           },
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         ElevatedButton(
//                           child: Text("Start Multi Stop"),
//                           onPressed: () async {
//                             _isMultipleStop = true;
//                             var wayPoints = <WayPoint>[];
//                             wayPoints.add(_origin);
//                             wayPoints.add(_stop1);
//                             wayPoints.add(_stop2);
//                             wayPoints.add(_stop3);
//                             wayPoints.add(_stop4);
//                             wayPoints.add(_origin);

//                             await _directions.startNavigation(
//                                 wayPoints: wayPoints,
//                                 options: MapBoxOptions(
//                                     mode: MapBoxNavigationMode.driving,
//                                     simulateRoute: true,
//                                     language: "en",
//                                     allowsUTurnAtWayPoints: true,
//                                     units: VoiceUnits.metric));
//                           },
//                         )
//                       ],
//                     ),
//                     Container(
//                       color: Colors.grey,
//                       width: double.infinity,
//                       child: Padding(
//                         padding: EdgeInsets.all(10),
//                         child: (Text(
//                           "Embedded Navigation",
//                           style: TextStyle(color: Colors.white),
//                           textAlign: TextAlign.center,
//                         )),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           child: Text(_routeBuilt && !_isNavigating
//                               ? "Clear Route"
//                               : "Build Route"),
//                           onPressed: _isNavigating
//                               ? null
//                               : () {
//                                     var wayPoints = <WayPoint>[];
//                                     wayPoints.add(WayPoint(name: "home", latitude: 17.3850, longitude: 78.4867));
//                                     wayPoints.add(WayPoint(name: "office", latitude: 17.4875, longitude: 78.3953));
//                                     wayPoints.add(WayPoint(name: "lp", latitude: 17.4837, longitude: 78.3158));
                                    
//                                     _isMultipleStop = wayPoints.length > 2;
//                                     _controller.buildRoute(
//                                         wayPoints: wayPoints);
//                                 },
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         ElevatedButton(
//                           child: Text("Start "),
//                           onPressed: _routeBuilt && !_isNavigating
//                               ? () {
//                                   _controller.startNavigation();
//                                 }
//                               : null,
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         ElevatedButton(
//                           child: Text("Cancel "),
//                           onPressed: _isNavigating
//                               ? () {
//                                   _controller.finishNavigation();
//                                 }
//                               : null,
//                         )
//                       ],
//                     ),
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           "Long-Press Embedded Map to Set Destination",
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.grey,
//                       width: double.infinity,
//                       child: Padding(
//                         padding: EdgeInsets.all(10),
//                         child: (Text(
//                           _instruction == null || _instruction.isEmpty
//                               ? "Banner Instruction Here"
//                               : _instruction,
//                           style: TextStyle(color: Colors.white),
//                           textAlign: TextAlign.center,
//                         )),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(
//                           left: 20.0, right: 20, top: 20, bottom: 10),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Row(
//                             children: <Widget>[
//                               Text("Duration Remaining: "),
//                               Text(_durationRemaining != null
//                                   ? "${(_durationRemaining / 60).toStringAsFixed(0)} minutes"
//                                   : "---")
//                             ],
//                           ),
//                           Row(
//                             children: <Widget>[
//                               Text("Distance Remaining: "),
//                               Text(_distanceRemaining != null
//                                   ? "${(_distanceRemaining * 0.000621371).toStringAsFixed(1)} miles"
//                                   : "---")
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Divider()
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 color: Colors.grey,
//                 child: MapBoxNavigationView(
//                     options: _options,
//                     onRouteEvent: _onEmbeddedRouteEvent,
//                     onCreated:
//                         (MapBoxNavigationViewController controller) async {
//                       _controller = controller;
//                       controller.initialize();
//                     }),
//               ),
//             )
//           ]),
//         ),
//       ),
//     );
//   }

//   Future<void> _onEmbeddedRouteEvent(e) async {
//     // _distanceRemaining = (await _directions.distanceRemaining);
//     // _durationRemaining = (await _directions.durationRemaining)!;

//     switch (e.eventType) {
//       case MapBoxEvent.progress_change:
//         var progressEvent = e.data as RouteProgressEvent;
//         if (progressEvent.currentStepInstruction != null)
//           _instruction = progressEvent.currentStepInstruction!;
//         break;
//       case MapBoxEvent.route_building:
//       case MapBoxEvent.route_built:
//         setState(() {
//           _routeBuilt = true;
//         });
//         break;
//       case MapBoxEvent.route_build_failed:
//         setState(() {
//           _routeBuilt = false;
//         });
//         break;
//       case MapBoxEvent.navigation_running:
//         setState(() {
//           _isNavigating = true;
//         });
//         break;
//       case MapBoxEvent.on_arrival:
//         if (!_isMultipleStop) {
//           await Future.delayed(Duration(seconds: 3));
//           await _controller.finishNavigation();
//         } else {}
//         break;
//       case MapBoxEvent.navigation_finished:
//       case MapBoxEvent.navigation_cancelled:
//         setState(() {
//           _routeBuilt = false;
//           _isNavigating = false;
//         });
//         break;
//       default:
//         break;
//     }
//     setState(() {});
//   }
// }






// import 'package:flutter/material.dart';
// import 'package:mapbox_turn_by_turn/screens/chargescreen.dart';
// import 'package:mapbox_turn_by_turn/widgets/navigationscreen.dart';

// import 'app.dart';
// import 'package:flutter/material.dart';

// import 'dashboard.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         primarySwatch: Colors.blue,
//       ),
//       home: const NavigationScreen(),
//     );
//   }
// }




import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapbox_turn_by_turn/presentation/home_screen.dart';
import 'package:mapbox_turn_by_turn/presentation/my_bookings_screen/my_bookings_screen.dart';
import 'package:mapbox_turn_by_turn/presentation/otp_verification.dart';
import 'package:mapbox_turn_by_turn/presentation/sign_in.dart';
import 'package:mapbox_turn_by_turn/presentation/splash_screen.dart';
import 'package:mapbox_turn_by_turn/screens/Homepage.dart';
import 'package:mapbox_turn_by_turn/screens/chargescreen.dart';
import 'package:mapbox_turn_by_turn/screens/mybookings.dart';
import 'package:mapbox_turn_by_turn/screens/navigationpush.dart';
import 'package:mapbox_turn_by_turn/screens/review_ride.dart';
import 'package:mapbox_turn_by_turn/screens/testmodule.dart';
// import "package:latlong/latlong.dart" as latLng;
import 'package:latlng/latlng.dart' as latLng;

// import 'chargescreen.dart';
// import 'package:custom_navigation_bar/custom_navigation_bar.dart';

// void main() {
//   runApp(const MyApp());
// }
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mapbox_turn_by_turn/splash2.dart';
import 'package:mapbox_turn_by_turn/ui/splash.dart';
import 'package:mapbox_turn_by_turn/widgets/navigationscreen.dart';

void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {

var comp1;
  // const MyApp({Key? key}) : super(key: key);
   late final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


// home: HomeScreen(),
// home: HomeScreen(),
// home: SignIn(),
// home: OtpVerification(token: 12444,),
// home: MyBookingsScreen(),
home: Splash2(),
// home: HomeScreen(),
// home: SplashScreen(),
// home: OtpVerification(token: 3344,),
// home: SignIn(),
// home: HomePage(),
// home: HomeScreen(),

// home: MyBookings(),
// home: NavigationScreen(),
// home: ReviewRide(),
// home: NavigationPush(),



//       home: 
//       Scaffold(

//         floatingActionButton: FloatingActionButton(onPressed: (){
//           // _controller.value=0.28;
//           _controller.value=0.7;
//           // _controller
//           //   ..duration = comp1.duration
// // print(comp1);

//         },),

//         body: ListView(
//           children: [
//             // Load a Lottie file from your assets


//             // Load a Lottie file from a remote url
//             Lottie.network(

//                 'https://assets5.lottiefiles.com/packages/lf20_fwfpcjph.json',controller: _controller,repeat: false,animate: true,onLoaded: (comp){

//                   // setState(() {
//                   //  comp1=comp;
//                   //
//                   //  comp.
//                   //
//                   // });
//               _controller
//                 ..duration = comp.duration
//                 ..forward();
//               // print(comp.duration.inMilliseconds);
//               // _controller..duration=;
//             }),


//           ],
//         ),
//       ),
   
   
   
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);

    // _controller = AnimationController(vsync: this);
    _controller.addListener(() {
      print(_controller.value);
       // if the full duration of the animation is 8 secs then 0.5 is 4 secs
      if (_controller.value > 0.44) {
// When it gets there hold it there.
        _controller.value = 0.44;
      }
    });
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // home: const MyHomePage(),
//       home: MyHomePage(),
//       // home: Home(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedindex=0;
  PageController _controller=new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: CurvedNavigationBar(


  color: Color(0xff121212),
  
  buttonBackgroundColor: Colors.black,


    backgroundColor: Colors.black,
    items: <Widget>[
      GestureDetector(
        
        
        
        child: Icon(Icons.pedal_bike_rounded, size: 30,color: selectedindex==0?Color(0xff75BE7E):Colors.white,)),
      GestureDetector(


        
        child: Icon(Icons.power_outlined, size: 30,color:selectedindex==1?Color(0xff75BE7E):Colors.white)),
      GestureDetector(
        
        child: Icon(Icons.navigation_sharp, size: 30,color:selectedindex==2?Color(0xff75BE7E):Colors.white)),
       GestureDetector(
        
        
        
        
        
        child: Icon(Icons.settings_applications, size: 30,color:selectedindex==3?Color(0xff75BE7E):Colors.white)),
    ],
    onTap: (index) {
      if(index==0)
      {

        _controller.animateToPage(0, duration: Duration(milliseconds:300,) ,curve: Curves.linear);
      }
  if(index==1)
      {

        _controller.animateToPage(1, duration: Duration(milliseconds:300,) ,curve: Curves.linear);
      }

        if(index==2)
      {

        _controller.animateToPage(2, duration: Duration(milliseconds:300,) ,curve: Curves.linear);
      }
      setState(() {
        selectedindex=index;
      });
      //Handle button tap
    },
  ),

      backgroundColor: Colors.black,
      body: 
      
    PageView(

      controller: _controller,
      
      physics: NeverScrollableScrollPhysics(),
      children: [

  SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vayu Pace",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Last synced 2h ago",
                          style: TextStyle(
                            color: Color(0xff9EA4AF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),

                  //// bike image on a circle
                  ///

                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage("assets/vayusign.png"),
                    radius: 27,
                    // backgroundColor: Colors.red,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "75 Km ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Range",
                        style: TextStyle(
                            color: Color(0xff9EA4AF),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff0C1F12),
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xff70DA72),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Economy",
                        style: TextStyle(
                            color: Color(0xff70DA72),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ]),
                  ),
                ],
              ),
            ),



SizedBox(height: 30,)
,Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child:   Container(
    
    height: 250,
    // color: Colors.red,
    width: double.infinity,

    decoration: BoxDecoration(
      // border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.0,
            0.9
          ], colors: [
                 Color(0xff000000),
            Color(0xff292D32),
       
          ]),

    ),



child: Stack(
  children: [

        Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
    
    Column(children: [
    
    
    Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
      child:   Row(children: [
      
      Image.asset("assets/charge.png")
      
      
      ],),
    ),
    
    Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
      child:   Row(children: [
      
      Text("72%",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),)
      
      
      ],),
    ),
    
    
    Padding(
      padding: const EdgeInsets.fromLTRB(30, 8, 0, 0),
      child:   Row(children: [
      
      Text("Charging Now",style: TextStyle(color: Color(0xff80888D),fontSize: 17,fontWeight: FontWeight.normal),)
      
      
      ],),
    ),
    
    ],),
    
    
    
    Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 0, 20),
      child:   Row(
        
        children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
          
          
          Text("1h 40 min left",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.w600,)),
            Row(
              children: [
                Text("Until ",style: TextStyle(color: Color(0xff80888D),fontSize: 20,fontWeight: FontWeight.bold),),
                Text("80% ",style: TextStyle(color: Color(0xff67BC78),fontSize: 20,fontWeight: FontWeight.bold),),
                Text("charge ",style: TextStyle(color: Color(0xff80888D),fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),





      
          ],),
    
    
    
        ],
      ),
    )
    
    
    
    
    
    ],),




Align(
  alignment: Alignment(1,1),
  child:   Container(
    
    
    height: 250,
    child: Image.asset("assets/vayu.png")),
)
      
  ],
),



  ),
),




Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),child: Row(
  
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [


Container(

 height: 70,
 width: 99, 
 decoration: BoxDecoration(
  color: Color(0xff111111),
  borderRadius: BorderRadius.circular(8)
 ),
 

  
  child: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      
      children: [


Icon(Icons.document_scanner,color: Colors.white,),

Padding(
    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
    child:   Text("Documents",style: TextStyle(color: Colors.white),),
)


],),
  ),),


  Container(

 height: 70,
 width: 99, 
 decoration: BoxDecoration(
  color: Color(0xff111111),
  borderRadius: BorderRadius.circular(8)
 ),
 

  
  child: Center(
    child: Column(
      
      mainAxisSize: MainAxisSize.min,
      
      children: [


Icon(Icons.location_on,color: Colors.white,),

Padding(
    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
    child:   Text("Locate",style: TextStyle(color: Colors.white),),
)


],),
  ),),

  Container(

 height: 70,
 width: 99, 
 decoration: BoxDecoration(
  color: Color(0xff111111),
  borderRadius: BorderRadius.circular(8)
 ),
 

  
  child: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      
      children: [


Icon(Icons.bluetooth,color: Colors.white,),

Padding(
    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
    child:   Text("Bluetooth",style: TextStyle(color: Colors.white),),
),

],),
  ),),


],),),




SizedBox(height: 40,),
Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child:   Container(
    // color: Colors.red,
    height: 90,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
  
  
  
  Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
    Text("TRIP",style: TextStyle(color: Color(0xff70757D),fontSize: 17),),
    Text("124 Km",style: TextStyle(color: Colors.white,fontSize: 17),)
    
    ],),
  ),
  
  Container(
    height: 40,
    width: 1,
    color: Colors.white,
  ),
  
  
  
  Padding(
    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
    Text("ODO",style: TextStyle(color: Color(0xff70757D),fontSize: 17),),
    Text("700 Km",style: TextStyle(color: Colors.white,fontSize: 17),)
    
    ],),
  )
      
    ]),
  ),
),



Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child:   Divider(
    color:Colors.white,thickness: 2,
  ),
),










          ],
        ),
      ),


      /// page  2
  ChargeScreen(),


  NavigationPush(),
  

    ],)
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();





  }

  
}

