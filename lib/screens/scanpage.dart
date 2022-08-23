import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart'as https;

import 'AddtoBag.dart';

class ScanPage extends StatefulWidget {
  var adminid;

  var lat;
  var long;
  var city;
  var address;
  ScanPage({this.adminid,this.long,this.lat,this.address,this.city});
  // const ScanPage({ Key? key }) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  bool isloading=false;
  bool scandone=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff3B5BCD),
        // appBar: new AppBar(
        //   title: Text("Scan Pack"),
        //   backgroundColor: Color(0xff003365),

        //   leading: Icon(Icons.location_on),
         
        //   centerTitle: false,

        //   // actions: [

        //   //   Padding(
        //   //     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        //   //     child: Container(
        //   //         width: 84.24220275878906,
        //   //         height: 25.55250358581543,
        //   //         decoration: BoxDecoration(
        //   //           borderRadius : BorderRadius.only(
        //   //             topLeft: Radius.circular(1.3853164911270142),
        //   //             topRight: Radius.circular(1.3853164911270142),
        //   //             bottomLeft: Radius.circular(1.3853164911270142),
        //   //             bottomRight: Radius.circular(1.3853164911270142),
        //   //           ),
        //   //           image : DecorationImage(
        //   //               image: AssetImage('assets/logo.png'),
        //   //               fit: BoxFit.fitWidth
        //   //           ),
        //   //         )

        //   //     ),
        //   //   ),
        //   // ],
        // ),

        body:isloading!=true?Stack(
          children: [




Image.asset("assets/cycle.png"),

Positioned(
  bottom: 0,
  child: Image.asset("assets/bike.png",scale: 1.3,)),

  Positioned(
  bottom: 0,
  right: 0,
  child: Image.asset("assets/egg.png",scale: 1.3,)),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    //   Center(
    //   child: CustomPaint(
    //   foregroundPainter: BorderPainter(),
    //   child: Padding(
    //     padding: const EdgeInsets.all(20.0),
    //     child: Container(
    //       width: 280,
    //       height: 280,
    //       color: Colors.deepOrange[50],
    //       child: QRView(


    //         key: qrKey,
    //         overlay: QrScannerOverlayShape(
    //           borderRadius: 20,

    //         ),

    //         onQRViewCreated: _onQRViewCreated,
    //       ),
    //     ),
    //   ),
    // ),
    // ),


Center(
  child:   Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(17),
  // color: Colors.deepOrange[50],
  border: Border.all(
    color: Colors.white,
    width:6
  )
    ),
                width: 220,
                height: 220,
              
                child: QRView(
  
  
                  key: qrKey,
                  // overlay: QrScannerOverlayShape(
                  //   borderRadius: 20,
                  //   s
  
                  // ),
  
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
),






              // Expanded(
              //   flex: 1,
              //   child: Center(
              //     child: (result != null)
              //         ? Text(
              //             'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
              //         : Text('Scan a code'),
              //   ),
              // )


              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              //   child: Container(
              //     width: 156,
              //     height: 52.58427047729492,
              //     decoration: BoxDecoration(
              //       borderRadius : BorderRadius.only(
              //         topLeft: Radius.circular(5),
              //         topRight: Radius.circular(5),
              //         bottomLeft: Radius.circular(5),
              //         bottomRight: Radius.circular(5),
              //       ),
              //       image : DecorationImage(
              //           image: AssetImage('assets/Image3.png'),
              //           fit: BoxFit.fitWidth
              //       ),
              //     ),

              //   ),
              // ),
      ],),
          ],
        ):Center(child: CircularProgressIndicator()),
    );
  }


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    completescan();
  }
  void completescan(){



Future.delayed(Duration(seconds: 4)).then((value) {
 

Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoBag(barcode: "12345",)));


});


  }

  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {

    
      
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.14; // desirable value for corners side

    Paint paint = Paint()
      ..color = Colors.blueAccent
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}