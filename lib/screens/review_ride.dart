import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_turn_by_turn/helpers/mapbox_handler.dart';
import 'package:mapbox_turn_by_turn/helpers/shared_prefs.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../helpers/commons.dart';
import '../widgets/review_ride_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:http/http.dart' as server;
class ReviewRide extends StatefulWidget {
  LatLng sourceLatLng;
LatLng destinationLatLng;
var packdetails;
  ReviewRide({this.packdetails,required this.sourceLatLng,required this.destinationLatLng});

  @override
  State<ReviewRide> createState() => _ReviewRideState();
}

class _ReviewRideState extends State<ReviewRide> {
   var modifiedResponse;
  // Mapbox Maps SDK related
  final List<CameraPosition> _kTripEndPoints = [];
  late MapboxMapController controller;
  late CameraPosition _initialCameraPosition;

  // Directions API response related
  late String distance="";
  late String dropOffTime="";
  late Map geometry;


Future<void> getmap() async {
  

        getDirectionsAPIResponse(widget.sourceLatLng, widget.destinationLatLng).then((value) {

setState(() {
  modifiedResponse=value;
});
 _initialiseDirectionsResponse();
   _initialCameraPosition = CameraPosition(
        target: getCenterCoordinatesForPolyline(geometry), zoom: (modifiedResponse['distance'] / 1000)<3?15:11);

    //      for (String type in ['source', 'destination']) {
    //   _kTripEndPoints
    //       .add(CameraPosition(target: getTripLatLngFromSharedPrefs(type)));
    // }

        },);
     


}

  @override
  void initState() {

  getmap();
 
   
    super.initState();
  }

  _initialiseDirectionsResponse() {
   setState(() {
      distance = (modifiedResponse['distance'] / 1000).toStringAsFixed(1);
    dropOffTime = getDropOffTime(modifiedResponse['duration']);
    geometry = modifiedResponse['geometry'];

    if((modifiedResponse['distance'] / 1000)<3){

      CameraPosition(
                target: getCenterCoordinatesForPolyline(geometry), zoom: 15
      );
    }
   });




  }

  _onMapCreated(MapboxMapController controller) async {
    this.controller = controller;
  }

  _onStyleLoadedCallback() async {
    for (int i = 0; i < _kTripEndPoints.length; i++) {
      String iconImage = i == 0 ? 'circle' : 'square';
      await controller.addSymbol(
        SymbolOptions(
          geometry: _kTripEndPoints[i].target,
          iconSize: 0.1,
          iconImage: "assets/icon/$iconImage.png",
        ),
      );
    }
    _addSourceAndLineLayer();
  }

  _addSourceAndLineLayer() async {
    // Create a polyLine between source and destination
    final _fills = {
      "type": "FeatureCollection",
      "features": [
        {
          "type": "Feature",
          "id": 0,
          "properties": <String, dynamic>{},
          "geometry": geometry,
        },
      ],
    };

    // Add new source and lineLayer
    await controller.addSource("fills", GeojsonSourceProperties(data: _fills));
    await controller.addLineLayer(
      "fills",
      "lines",
      LineLayerProperties(
        lineColor: CupertinoColors.activeBlue.toHexStringRGB(),
        lineCap: "round",
        lineJoin: "round",
        lineWidth: 3,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //       icon: const Icon(Icons.arrow_back)),
      //   title: const Text('Review Ride'),
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            modifiedResponse!=null?SizedBox(
              height: MediaQuery.of(context).size.height,
              child: MapboxMap(
                styleString: "mapbox://styles/gunreddyvishnu/cl2orp77o005814pe82f26u04",
        //  styleString: "mapbox://styles/gunreddyvishnu/ckiwvar0r56t519qkn0pnzv2d",
                accessToken: dotenv.env['MAPBOX_ACCESS_TOKEN'],
                initialCameraPosition: _initialCameraPosition,
                onMapCreated: _onMapCreated,
                onStyleLoadedCallback: _onStyleLoadedCallback,
                myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
                minMaxZoomPreference: const MinMaxZoomPreference(11, 60),
              ),
            ):SizedBox(),
          

// Positioned(
//   top: 140,
//   right: 0,
//   child:   Row(
//     children: [
//       Column(
//         children: [
//           Container(
//             padding: EdgeInsets.zero,
//             height: 40,

//             // width: 200,
//             child: SfBarcodeGenerator(
              
//               barColor: Color(0xff3754D1),value: 'www.syncfusion.com')),
//               // Text(widget.packdetails["barcode"],style: TextStyle(color: Colors.white),)
//         ],
//       ),
//     ],
//   ),
// ),


    Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              // color: Colors.red,
              child: Center(
                child: Container(
                  height: 100,
                
                  width:  MediaQuery.of(context).size.width*0.94,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [



Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  child:   Container(
    width: 200,
    // color: Colors.red,
    child:   Text(widget.packdetails["name"].toString(),style: TextStyle(
      letterSpacing: 1.3,
    
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize:26,
    
    
    ),),
  ),
),


GestureDetector(
  onTap: (){

launch("tel:+91"+widget.packdetails["mobile"]);

  },
  child:   Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
    child:   CircleAvatar(
      radius: 30,
      backgroundColor: Color(0xff00C953),
      child: Icon(Icons.call,size: 40,color: Colors.white,),
    ),
  ),
)



                  ],)
                  
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              // color: Colors.red,
              child: Center(
                child: Container(
                  height: 250,
                
                  width:  MediaQuery.of(context).size.width*0.97,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight:  Radius.circular(15)
                    )
                  ),
                  child: Column(children: [



Container(
  width: MediaQuery.of(context).size.width,

  height: 150,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(19),
    color: Colors.white,
),
child: PageView(
  scrollDirection: Axis.horizontal,
  children: [
       Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
      // Icon(Icons.pin),
      
      
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width*0.8,
          
          child: Text(widget.packdetails["address"],
          
          
          style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.w600
          ),
          
          )),
      ),
      
      
      
      
      
      ],),
      
      
      
      Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      
       Row(children: [ Icon(Icons.swap_calls_outlined),
       SizedBox(width: 8,),
        Text("$distance Km",style: TextStyle(color: Color(0xff3754D1),fontSize: 18,fontWeight: FontWeight.w600),),],),
      SizedBox(width: 80,),
         Row(children: [ Icon(Icons.timer),
          SizedBox(width: 8,),
        Text("$dropOffTime",style: TextStyle(color: Color(0xff3754D1),fontSize: 18,fontWeight: FontWeight.w600),),],)
      
      ],)
      
      
      
      ],),






  
    ],
  ),







Container(
  height: 70,
  child: Padding(
                padding: const EdgeInsets.all(10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     SlideAction(
                       
                       text: "Slide to Delivery",
                       onSubmit: (){







                       },
                     ),

                     Text(widget.packdetails["barcode"].toString(),style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.w600
                     ),)
                   ],
                 ),
              ),
)




  ],
),
),



Padding(
  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child:   Container(
    
    height: 80,
    child:   CupertinoButton(color: Color(0xff3754D1),child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
    
    Icon(Icons.navigation_rounded,color: Colors.white,size: 33,),
    SizedBox(width: 20,),
    
    Text("Navigate",style: TextStyle(letterSpacing: 1.6,color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
    
    ],), onPressed: (){


navigateTo(widget.packdetails["location"]["lat"],widget.packdetails["location"]["long"]);

    }),
  ),
)




                  ]),
                ),
              ),
            ),
          ),

          ],
        ),
      ),
    );
  }

void delivery(){



 final uri = Uri.parse("serverlink");
  final headers = {'Content-Type': 'application/json'};
  Map<String, dynamic> body = {
    "barcode":widget.packdetails["barcode"],
  };
  String jsonBody = json.encode(body);
  final encoding = Encoding.getByName('utf-8');

   server.post(
    uri,
    headers: headers,
    body: jsonBody,
    encoding: encoding,
  ).then((value) {
    if(value.statusCode==200){

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Package delivery Done")));


    }
    else{


      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.red,content: Text("Unkown Error")));

    }
  });







}



static void navigateTo(double lat, double lng) async {
   var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
        await launch(uri.toString());
}




  
}
