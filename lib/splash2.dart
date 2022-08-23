import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/presentation/splash_screen.dart';

class Splash2 extends StatefulWidget {
  const Splash2({ Key? key }) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Container(



      color: Colors.black,



    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 sendsplash();

  }

  void sendsplash(){


    Future.delayed(Duration(milliseconds: 2000)).then((value) {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
    });
  }
}