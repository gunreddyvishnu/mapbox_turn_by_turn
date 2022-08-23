import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_turn_by_turn/api.dart';
import 'package:mapbox_turn_by_turn/screens/review_ride.dart';
import 'package:mapbox_turn_by_turn/userdetails.dart';
import 'package:http/http.dart' as https;

import 'package:collection/collection.dart';
class ShowPackages extends StatefulWidget {
  const ShowPackages({ Key? key }) : super(key: key);

  @override
  State<ShowPackages> createState() => _ShowPackagesState();
}

class _ShowPackagesState extends State<ShowPackages> {
  var packages=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

floatingActionButton: FloatingActionButton.extended(icon: Icon(Icons.refresh),onPressed: (){

  getpackages();
}, label: Text("Refresh")),

appBar: new AppBar(
  backgroundColor: Color(0xff3754D1),
),

body: Column(children: [


packages.length>0?ListView.builder(
  itemCount: packages.length,
  shrinkWrap: true,
  itemBuilder: (context,index){

return Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Material(
    
    
    elevation: 2,
    child:   Container(
      decoration: BoxDecoration(
      color: Color(0xff3754D1),
      borderRadius: BorderRadius.circular(12)
      ),

      child: ListTile(
        
        hoverColor: Colors.yellow,
        onTap: () async {
 var _locationData = await Location().getLocation();
           Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewRide(packdetails: packages[index]["package"],sourceLatLng: LatLng(_locationData.latitude!,_locationData.longitude!),destinationLatLng:LatLng(packages[index]["package"]["location"]["lat"],packages[index]["package"]["location"]["long"]) ,)));

        },
        
        title: Text(packages[index]["package"]["name"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
        subtitle: Text(packages[index]["package"]["address"],style: TextStyle(
          color: Colors.white
        ),),
        leading: Icon(Icons.location_on,color: Colors.white,),
      
      ),
    ),
  ),
);


}):Center(child: Text("No Packages Found")),


],),

    );
  }

@override
  void initState() {
  
    super.initState();
    getpackages();
  }

void chnagepage(){

}


  Future<void> getpackages() async {
  
  

 var _locationData = await Location().getLocation();






https.post(Uri.parse(apihandler.baseurl+"getmydeliverys"),body: {
  "riderid":userdetails.userid
}).then((value) {
        setState(() {
            
if(value.statusCode==200){

packages=jsonDecode(value.body);

packages.forEachIndexed((index, element) {


var distance=Geolocator.distanceBetween(element["package"]["location"]["lat"], element["package"]["location"]["long"], _locationData.latitude!, _locationData.longitude!);

setState(() {
  packages[index]["distance"]=distance;
  print("the distance is"+distance.toString());
});


});

packages.sort((a, b) => a["distance"].compareTo(b["distance"]));
setState(() {
  
});
}

      });


      });

  }


}