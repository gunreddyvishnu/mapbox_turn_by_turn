import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mapbox_turn_by_turn/add_stations.dart';
import 'package:mapbox_turn_by_turn/screens/AddtoBag.dart';
import 'package:http/http.dart' as http;
import '../core/constants/constants.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../widgets copy/common_image_view.dart';

class NoStationssScreen extends StatefulWidget {
  @override
  State<NoStationssScreen> createState() => _NoStationssScreenState();
}

class _NoStationssScreenState extends State<NoStationssScreen> {
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
    print(allStations["stationslist"][0]["station_name"]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
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
                    margin: getMargin(
                      left: 18,
                      top: 49,
                      right: 8,
                      bottom: 53,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width,
                          margin: getMargin(
                            left: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 20,
                                ),
                                child: Text(
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
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Iphone1313ProSeventyeightScreen()));
                                },
                                child: Container(
                                  margin: getMargin(
                                    top: 3,
                                    right: 11,
                                    bottom: 3,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                        ShowListData(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ShowListData() {


if(isLoading == false){
  return Container();
}else if(isLoading == true){
  return const Center(child: CircularProgressIndicator(),);
} else {
  return Container(
                        height: getVerticalSize(
                          262.00,
                        ),
                        width: getHorizontalSize(
                          252.00,
                        ),
                        margin: getMargin(
                          left: 51,
                          top: 167,
                          right: 51,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  top: 10,
                                  right: 1,
                                ),
                                child: Text(
                                  "You have’nt added any station",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      16.5,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
}
}
}
