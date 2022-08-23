import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/screens/scanpage.dart';
import 'package:mapbox_turn_by_turn/screens/showpackages.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: Text("Dabba Delivery"),
      ),
      body: Column(
        
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [



Padding(
  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
  child:   Container(
    
    height: 80,
    child:   CupertinoButton(color: Color(0xff3754D1),child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
    
    Icon(Icons.leave_bags_at_home,color: Colors.white,size: 33,),
    SizedBox(width: 20,),
    
    Text("ADD TO BAG",style: TextStyle(letterSpacing: 1.6,color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
    
    ],), onPressed: (){


Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanPage()));

    }),
  ),
),


Padding(
  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
  child:   Container(
    
    height: 80,
    child:   CupertinoButton(color: Color(0xff3754D1),child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
    
    Icon(Icons.navigation_rounded,color: Colors.white,size: 33,),
    SizedBox(width: 20,),
    
    Text("DELIVER",style: TextStyle(letterSpacing: 1.6,color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
    
    ],), onPressed: (){

Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowPackages()));

    }),
  ),
),





      ]),


    );
  }
}