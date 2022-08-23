// import 'package:application11/core/app_export.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';

class MyBookingsScreen extends StatefulWidget {
  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {

  String? userid;

  bool isloading = true;

  var Bookinglist;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

    fetchData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    print(userid);
    Uri url = Uri.parse("${Constants.url}mybookings_so");
    final response = await http.post(url, body: {
      'userid': userid,
    });
    print(response.body.toString());
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    Bookinglist = decodedResponse;
    isloading = false;
    setState(() {});
    return decodedResponse;
  }

  // fetchData()async {
  //   try {
  //     final SharedPreferences sharedPreferences =
  //           await SharedPreferences.getInstance();
  //     userid = sharedPreferences.getString('userid');
  //     print(userid);
  //     http.Response response =
  //         await http.post(Uri.parse(Constants.url + 'mybookings_so'), body: {
  //       'userid': userid,
  //     });
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       final data = jsonDecode(response.body);
  //       // print(data);
  //       Bookinglist = data;
  //       print(Bookinglist);
  //       // if (data['status'] == 'good') {
  //       //   // Navigator.pushReplacement(context,
  //       //   //     MaterialPageRoute(builder: (context) => OtpVerification()));
  //       // }
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e.toString());
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(
                  0.5,
                  -3.0616171314629196e-17,
                ),
                end: Alignment(
                  0.5,
                  0.9999999999999999,
                ),
                colors: [
                  ColorConstant.bluegray900,
                  ColorConstant.teal700,
                ],
              ),
            ),
            child: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 21,
                        top: 39,
                        right: 33,
                        bottom: 14,
                      ),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width,
                            margin: getMargin(
                              left: 1,
                              right: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "My Bookings",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      32,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                right: 10,
                              ),
                              child: Text(
                                "All Bookings",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.gray300,
                                  fontSize: getFontSize(
                                    15,
                                  ),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                    isloading == true ? Center(child: CircularProgressIndicator(),) :
                          Column(children: [
                       Container(
                      margin: getMargin(
                        left: 20,
                        top: 64,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.bluegray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 15,
                              bottom: 15,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  6.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgImage34,
                                height: getVerticalSize(
                                  80.00,
                                ),
                                width: getHorizontalSize(
                                  81.00,
                                ),
                              ),
                            ),
                          ),
                          
                          Container(
                            margin: getMargin(
                              left: 11,
                              top: 15,
                              right: 81,
                              bottom: 29,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  // 'tteest',
                                  Bookinglist["bookinglist"][0]["vehicle"],
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray700,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 10,
                                    right: 10,
                                  ),
                                  child: Text(
                                    // 'test',
                                  "Location: " + Bookinglist["bookinglist"][0]["vehicle"],
                                    // "Model ${myVehicles["uservehicles"][0]["model"]}  ${myVehicles["uservehicles"][0]["v_no"]}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: getFontSize(
                                        10
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 11,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Socket Type:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: getFontSize(
                                        10,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ],
                          // Padding(
                          //   padding: getPadding(
                          //     left: 15,
                          //     top: 207,
                          //     right: 15,
                          //   ),
                          //   child: CommonImageView(
                          //     imagePath: ImageConstant.imgCalendarxa0im,
                          //     height: getVerticalSize(
                          //       173.00,
                          //     ),
                          //     width: getHorizontalSize(
                          //       180.00,
                          //     ),
                          //   ),
                          // ),
                          // Padding(
                          //   padding: getPadding(
                          //     left: 15,
                          //     top: 22,
                          //     right: 15,
                          //   ),
                          //   child: Text(
                          //     "No Bookings are done yet!",
                          //     overflow: TextOverflow.ellipsis,
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       color: ColorConstant.gray400,
                          //       fontSize: getFontSize(
                          //         16.5,
                          //       ),
                          //       fontFamily: 'Poppins',
                          //       fontWeight: FontWeight.w400,
                          //     ),
                          //   ),
                          // ),
                          // Padding(
                          //   padding: getPadding(
                          //     left: 15,
                          //     top: 257,
                          //     right: 11,
                          //   ),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     mainAxisSize: MainAxisSize.max,
                          //     children: [
                          //       Padding(
                          //         padding: getPadding(
                          //           bottom: 2,
                          //         ),
                          //         child: CommonImageView(
                          //           svgPath: ImageConstant.imgVectorTealA200,
                          //           height: getVerticalSize(
                          //             18.00,
                          //           ),
                          //           width: getHorizontalSize(
                          //             22.00,
                          //           ),
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: getPadding(
                          //           bottom: 2,
                          //         ),
                          //         child: CommonImageView(
                          //           svgPath: ImageConstant.imgCalendar,
                          //           height: getSize(
                          //             18.00,
                          //           ),
                          //           width: getSize(
                          //             18.00,
                          //           ),
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: getPadding(
                          //           top: 2,
                          //         ),
                          //         child: CommonImageView(
                          //           svgPath: ImageConstant.imgCar,
                          //           height: getVerticalSize(
                          //             18.00,
                          //           ),
                          //           width: getHorizontalSize(
                          //             20.00,
                          //           ),
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: getPadding(
                          //           top: 4,
                          //           bottom: 3,
                          //         ),
                          //         child: CommonImageView(
                          //           svgPath: ImageConstant.imgMenu,
                          //           height: getVerticalSize(
                          //             13.00,
                          //           ),
                          //           width: getHorizontalSize(
                          //             18.00,
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Padding(
                          //   padding: getPadding(
                          //     left: 8,
                          //     top: 3,
                          //   ),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisSize: MainAxisSize.max,
                          //     children: [
                          //       Text(
                          //         "Home",
                          //         overflow: TextOverflow.ellipsis,
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //           color: ColorConstant.gray900,
                          //           fontSize: getFontSize(
                          //             12,
                          //           ),
                          //           fontFamily: 'Poppins',
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //       Text(
                          //         "My Booking",
                          //         overflow: TextOverflow.ellipsis,
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //           color: ColorConstant.gray900,
                          //           fontSize: getFontSize(
                          //             12,
                          //           ),
                          //           fontFamily: 'Poppins',
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //       Text(
                          //         "My Vehicle",
                          //         overflow: TextOverflow.ellipsis,
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //           color: ColorConstant.gray900,
                          //           fontSize: getFontSize(
                          //             12,
                          //           ),
                          //           fontFamily: 'Poppins',
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //       Text(
                          //         "Menu",
                          //         overflow: TextOverflow.ellipsis,
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //           color: ColorConstant.gray900,
                          //           fontSize: getFontSize(
                          //             12,
                          //           ),
                          //           fontFamily: 'Poppins',
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                      )],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
