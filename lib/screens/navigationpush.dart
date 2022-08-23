import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:google_place/google_place.dart';

import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:google_api_headers/google_api_headers.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
class NavigationPush extends StatefulWidget {
  const NavigationPush({ Key? key }) : super(key: key);

  @override
  State<NavigationPush> createState() => _NavigationPushState();
}

class _NavigationPushState extends State<NavigationPush> {
  late MapboxMapController mapController1;
  String googleApikey = "AIzaSyDq5PevsIS_QtEHAajNtUXIarbIfkFbdmw";
  // GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(27.6602292, 85.308027);
  String location = "Search Location";

var searchlist=[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,



body: SafeArea(
  child:   Stack(
    children: [

      MapboxMap(
        styleString: "mapbox://styles/gunreddyvishnu/ckiwvar0r56t519qkn0pnzv2d",
        onMapCreated: ((controller) => {
          mapController1 = controller
        }),
        accessToken: "sk.eyJ1IjoiZ3VucmVkZHl2aXNobnUiLCJhIjoiY2w0Y210Mzh6MDAyNjNpbXVtYWxkaWx0NCJ9.r3_9rkfoGb2X1csIzfZ58w",
        compassEnabled: true,
        myLocationEnabled: true,
        myLocationRenderMode: MyLocationRenderMode.COMPASS,
        myLocationTrackingMode: MyLocationTrackingMode.None,  initialCameraPosition: CameraPosition(
          target: LatLng(20.5937, 78.9629),
          zoom: 5
      ),

      ),
      Column(children: [


      Container(
        // height: 160,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff1D1F24),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column
          (


            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

      Text("Whare to go ?",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),


      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: GestureDetector(
          onTap: () async {

            var place = await PlacesAutocomplete.show(
                context: context,
                apiKey: googleApikey,
                mode: Mode.overlay,
                types: [],
                strictbounds: false,
                // components: [Component(Component.country, 'ind')],
                // components: [Component(Component, value)],
//google_map_webservice package
                onError: (err){
                  print(err);
                }
            );

            if(place != null){
              setState(() {
                print(place);
                location = place.description.toString();
              });

//form google_maps_webservice package
              final plist = GoogleMapsPlaces(apiKey:googleApikey,
                  apiHeaders: await GoogleApiHeaders().getHeaders(),
//from google_api_headers package
            );
            String placeid = place.placeId ?? "0";
            final detail = await plist.getDetailsByPlaceId(placeid);
            final geometry = detail.result.geometry!;
            final lat = geometry.location.lat;
            final lang = geometry.location.lng;
            var newlatlang = LatLng(lat, lang);

            print({
              "new_lat_long":newlatlang
            });


              mapController1.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    bearing: 270.0,
                    target: newlatlang,
                    tilt: 30.0,
                    zoom: 11.0,
                  ),
                ),
              ).then((value) {


                mapController1.addSymbol(

                    SymbolOptions(

                      iconSize: 3,
                      geometry:newlatlang,
                      iconImage: "assets/pin.png",
                    ),

                );




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
                          // Text(place..toString(),style:TextStyle(
                          //     fontWeight:FontWeight.bold,
                          //     fontSize: 20
                          //
                          // )),
                          SizedBox(height: 10,),
                          // place.toString()

                          Text(place.description.toString(),style:TextStyle(
                              fontWeight:FontWeight.normal

                          )),


                          SizedBox(height: 30,),


                          Center(
                            child: CupertinoButton(

                                color: Color(0xff4D9F44),
                                child: Text("Send To Scooter"), onPressed: (){



                            }),
                          )
                        ],
                      ),
                    );
                  },
                );




              });
//move map camera to selected place with animation
//         mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: newlatlang, zoom: 17)));
          }


          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            height: 40,

            width: MediaQuery.of(context).size.width,

          ),
        ),
      ),





          ]),
        ),

      ),








      ]),




    ],
  ),
),



    );
  }

//   Future<void> search(searchvalue) async {
//
//
//
//
//     // var result = await googlePlace.search.getFindPlace(
//     //     "Museum of Contemporary Art Australia", InputType.TextQuery);
//
//     var googlePlace = GooglePlace("AIzaSyCA70oVxJrvzeWB-1ILVSPSx_BYjh4RBNA");
//     var result = await googlePlace.autocomplete.get("1600 Amphitheatre");
//
//     print(result!.predictions);
//     setState(() {
//       // searchlist=result!.candidates!.toList();
//     });
//
//
// }



}










// Positioned(  //search input bar
// top:10,
// child: InkWell(
// onTap: () async {
//   //
//
// ///
// ///
// /// //
//
// },
// child:Padding(
// padding: EdgeInsets.all(15),
// child: Card(
// child: Container(
// padding: EdgeInsets.all(0),
// width: MediaQuery.of(context).size.width - 40,
// child: ListTile(
// title:Text(location, style: TextStyle(fontSize: 18),),
// trailing: Icon(Icons.search),
// dense: true,
// )
// ),
// ),
// )
// )
// )
//









