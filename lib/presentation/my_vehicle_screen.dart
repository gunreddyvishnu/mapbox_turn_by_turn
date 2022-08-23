import 'dart:convert';

// import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mapbox_turn_by_turn/presentation/add_your_vehicle_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';
class MyVehicleScreen extends StatefulWidget {
  @override
  State<MyVehicleScreen> createState() => _MyVehicleScreenState();
}

class _MyVehicleScreenState extends State<MyVehicleScreen> {
  String? userid;

  bool isloading = true;

  var myVehicles;

  @override
  void initState() {
    super.initState();
    fetchVehicle();
  }

  fetchVehicle() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    print(userid);
    Uri url = Uri.parse("${Constants.url}myvehicles");
    final response = await http.post(url, body: {
      'userid': userid,
    });
    print(response.body.toString());
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    myVehicles = decodedResponse;
    isloading = false;
    setState(() {});
    return decodedResponse;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: 
          Container(
            height: size.height,
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
              child: 
              
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 29,
                        top: 77,
                        right: 29,
                      ),
                      child: Text(
                        "My Vehicle's",
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
                    ),
                    isloading == true ? Center(child: CircularProgressIndicator(),) :

                    Column(children: [
Container(
                      margin: getMargin(
                        left: 29,
                        top: 64,
                        right: 29,
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
                                  userid! + " " + myVehicles["uservehicles"][0]["brand"],
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
                                    "Model ${myVehicles["uservehicles"][0]["model"]}  ${myVehicles["uservehicles"][0]["v_no"]}",
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
                    Container(
                      margin: getMargin(
                        left: 29,
                        top: 44,
                        right: 29,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                        border: Border.all(
                          color: ColorConstant.tealA400E5,
                          width: getHorizontalSize(
                            2.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 45,
                              bottom: 45,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgPlus,
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 2,
                              top: 43,
                              bottom: 43,
                            ),
                            child: GestureDetector(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>AddYourVehicleScreen()));
                              },
                              child: Text(
                                "Add New Vehicle",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.tealA400,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
