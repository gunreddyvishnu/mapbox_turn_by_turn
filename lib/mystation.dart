
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/widgets%20copy/common_image_view.dart';
import 'add_stations.dart';
import 'core/constants/constants.dart';
import 'core/utils/color_constant.dart';
import 'core/utils/image_constant.dart';
import 'core/utils/math_utils.dart';
import 'package:http/http.dart' as http;

import 'new_add_stations.dart';


class MyStationsScreen extends StatefulWidget {
  @override
  State<MyStationsScreen> createState() => _MyStationsScreenState();
}

class _MyStationsScreenState extends State<MyStationsScreen> {
  bool isLoading = true;
  var allStations;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAllStaions();
  }

    fetchAllStaions() async {
    Uri url = Uri.parse("${Constants.url}getallstations");
    final response = await http.post(url);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    allStations = decodedResponse;
    isLoading = false;
    setState(() {});
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      margin: getMargin(
                        left: 15,
                        top: 49,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "My Stations",
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
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 5,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "All Bookings",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray400,
                                      fontSize: getFontSize(
                                        13,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> testScreen()));
                            }),
                            child: Container(
                              margin: getMargin(
                                top: 3,
                                bottom: 3,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 27,
                                      right: 26,
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 13,
                                      ),
                                      child: Text(
                                        "Add Station",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 96,
                        right: 15,
                        bottom: 325,
                      ),
                      child: 
                      isLoading == true ? Center(child: CircularProgressIndicator(),) :
                      ListView.builder(
                        // physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: allStations["stationslist"].length,
                        itemBuilder: (context, index) {
                          return Padding(
              padding: getPadding(
          top: 20.0,
          bottom: 20.0,
              ),
              child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
            height: getSize(
              80.00,
            ),
            width: getSize(
              80.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.teal300,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  4.00,
                ),
              ),
            ),
            ),
            Container(
            margin: getMargin(
              left: 8,
              top: 4,
              right: 9,
              bottom: 3,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    242.00,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        4.00,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                       allStations["stationslist"][index]["station_name"],
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Colors.grey,),),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    241.00,
                  ),
                  margin: getMargin(
                    top: 20,
                    right: 1,
                  ),
                  child: Text(
                       allStations["stationslist"][index]["address"],
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.gray400,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            ),
          ],
              ),
            );
                        },
                      ),
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