import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mapbox_gl/mapbox_gl.dart';


class ChargeScreen extends StatefulWidget {
  const ChargeScreen({ Key? key }) : super(key: key);

  @override
  State<ChargeScreen> createState() => _ChargeScreenState();
}

class _ChargeScreenState extends State<ChargeScreen> {

var chargingstations=[
  
  {
  "station_name":"HP Fuel Station",
  "address":"Lb nagar",
"stationid":"ox11",

    "lat":17.3457,
    "long":78.5522
  
},

 {
  "station_name":"sree sai automobiles",
  "address":"Dilsukhnagar",
  "stationid":"ox12",



    "lat":17.3685,
    "long":78.5316
  
}
,{
  "station_name":"sai ram kirana",
  "address":"Dilsukhnagar Metro Station",
  "stationid":"ox13",

  
    "lat":17.368,
    "long":78.5257
  
}


];

  late MapboxMapController mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


// bottomNavigationBar: BottomAppBar(child: Container(

// height: 50,
// color: Color(0xff24736F),

// child: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//         Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
    
//     Icon(Icons.home,color:  Color(0xff282828),),
//     Text("Home",style: TextStyle(color:  Color(0xff282828)),)
//      ],),


//       Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
    
//     Icon(Icons.calendar_month,color:  Color(0xff282828),),
//     Text("My Booking",style: TextStyle(color:  Color(0xff282828)),)
//      ],),


//       Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
    
//     Icon(Icons.car_repair,color:  Color(0xff282828),),
//     Text("My Vehicle",style: TextStyle(color:  Color(0xff282828)),)
//      ],),



//  Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
    
//     Icon(Icons.menu,color:  Color(0xff282828),),
//     Text("Menu",style: TextStyle(color: Color(0xff282828)),)
//      ],),





//   ],
// ),

// )),





      backgroundColor: Colors.black,






body: Stack(
  children: [










        MapboxMap(
      styleString: "mapbox://styles/gunreddyvishnu/ckiwvar0r56t519qkn0pnzv2d",
      onMapCreated: ((controller) => {
          mapController = controller
      }),
    accessToken: "sk.eyJ1IjoiZ3VucmVkZHl2aXNobnUiLCJhIjoiY2w0Y210Mzh6MDAyNjNpbXVtYWxkaWx0NCJ9.r3_9rkfoGb2X1csIzfZ58w",
      compassEnabled: true,
      myLocationEnabled: true,
      myLocationRenderMode: MyLocationRenderMode.COMPASS,
      myLocationTrackingMode: MyLocationTrackingMode.None,  initialCameraPosition: CameraPosition(
        target: LatLng(45.45, 45.45),
        zoom: 13.0
      ),
    
    ),





// Container(

// height: 170,
// width: MediaQuery.of(context).size.width,

// decoration: BoxDecoration(
//   color: Color(0xff282828)
// ),


// child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [


// // Padding(
// //   padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
// //   child:   Container(
  
// //   // color: Colors.red,
// //   decoration: BoxDecoration(
// //     borderRadius: BorderRadius.circular(8),
// //     border: Border.all(
// //       color: Color(0xff34AC9A),
  
// //     )
// //   ),
// //   height: 50,
// //   width: MediaQuery.of(context).size.width*0.8,
  
  
// //   child: Center(child: Row(
// //     children: [
// //           Padding(
// //             padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
// //             child: Text("Search Maps",style: TextStyle(color: Colors.white,fontSize: 22),textAlign:TextAlign.left,),
// //           ),
// //     ],
// //   )),
// //   ),
// // ),







// // Padding(
// //   padding: EdgeInsets.fromLTRB(0, 20, 0, 00),
// //   child:   Row(
// //     mainAxisSize: MainAxisSize.max,
// //     mainAxisAlignment: MainAxisAlignment.spaceAround,
// //     children: [
  
// //   Row(
// //     children: [
// //           Icon((Icons.location_on_outlined),color: Color(0xffB8B8B8),),
  
  
// //           Text("Nearby",style: TextStyle(color: Color(0xffB8B8B8),fontSize: 16),)
// //     ],
// //   ),
  
  
  
// //   Row(
// //     children: [
// //           Icon((Icons.saved_search_rounded),color: Color(0xffB8B8B8),),
  
  
// //           Text("Recently Visited",style: TextStyle(color: Color(0xffB8B8B8),fontSize: 16),)
// //     ],
// //   ),
  
  
// //   Row(
// //     children: [
// //           Icon((Icons.favorite),color: Color(0xffB8B8B8),),
  
  
// //           Text("Favourites",style: TextStyle(color: Color(0xffB8B8B8),fontSize: 16),)
// //     ],
// //   )
  
  
// //   ],),
// // )




// ]),






// ),



// Align(
//   alignment: Alignment.bottomCenter,
//   child:   Container(
//     height: 60,
//     width: MediaQuery.of(context).size.width,
//     color: Color(0xff24736F),

//     child: Row(children: [





//     ]),
//   ),
// )




Align(
  alignment: Alignment.bottomLeft,
  child:   Container(
    child: Center(child: Text("GOS LABS")),
    decoration: BoxDecoration(
        color: Color(0xff24736F),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(14)
      )
    ),
    height: 30,
    width:116,
  
  ),
)











  ],
),


    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
animatetolocation();
  }
  Future<void> animatetolocation() async {


bool serviceEnabled;
LocationPermission permission;

// Test if location services are enabled.
serviceEnabled = await Geolocator.isLocationServiceEnabled();

permission = await Geolocator.checkPermission();
if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
        // Get.snackbar('', 'Location Permission Denied');
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }



if (permission == LocationPermission.deniedForever) {
 // Permissions are denied forever, handle appropriately.
 return Future.error(
     'Location permissions are permanently denied, we cannot request permissions.');
}
if(permission==LocationPermission.always||permission==LocationPermission.whileInUse){
Geolocator.getCurrentPosition().then((value) {

mapController.animateCamera(
                          CameraUpdate.newCameraPosition(
                             CameraPosition(
                              bearing: 270.0,
                              target: LatLng(value.latitude,value.longitude),
                              tilt: 30.0,
                              zoom: 11.0,
                            ),
                          ),
                        ).then((value) {
                          
                          mapController.onSymbolTapped.add((argument) {
                      


var varplace = chargingstations.where((i) => i["stationid"]==argument.data!["id"]).toList();

print(varplace);




 showModalBottomSheet<void>(
  
         
            context: context,
            builder: (BuildContext context) {
  


              return Container(
                height: 200,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Text(varplace[0]["station_name"].toString(),style:TextStyle(
fontWeight:FontWeight.bold,
fontSize: 20

                     )),
                     SizedBox(height: 10,),


                      Text(varplace[0]["address"].toString(),style:TextStyle(
fontWeight:FontWeight.normal

                     )),


                     SizedBox(height: 30,),


                     Center(
                       child: CupertinoButton(
                        
                        color: Color(0xff4D9F44),
                        child: Text("Book Slot"), onPressed: (){



                       }),
                     )
                  ],
                ),
              );
            },
          );





});
                        });


chargingstations.forEach((element) {
  var lat1=element["lat"] as double;
  var long1=element["long"] as double;

                      mapController.addSymbol(
                        
  SymbolOptions(
    
    iconSize: 3,
    geometry:LatLng(lat1,long1),
    iconImage: "assets/pin.png",
  ),
  {'id': element["stationid"]}
); 



  


});

});




}



}
}