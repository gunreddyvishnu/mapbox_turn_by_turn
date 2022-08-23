import 'package:flutter/material.dart';


class MyBookings extends StatefulWidget {
  const MyBookings({ Key? key }) : super(key: key);

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      backgroundColor: Color(0xff24736F),


      body: Column
      (children: [



Padding(
  padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
  
  
  
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("My Bookings",style: TextStyle(color: Colors.white,fontSize: 22),),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
  children: [
    // SizedBox(width: 20,),
        Text("All Bookings",style: TextStyle(color: Colors.white,fontSize: 16),),
  ],
)
    ],
  ),




IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,))

  
  
  ],),
),



















      ]),


    );
  }
}