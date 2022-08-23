import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as server;
import 'package:mapbox_turn_by_turn/api.dart';
import 'package:mapbox_turn_by_turn/userdetails.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:url_launcher/url_launcher.dart';


class AddtoBag extends StatefulWidget {
  // const AddtoBag({ Key? key }) : super(key: key);

  var packagedetails;
  var barcode;
  AddtoBag({this.barcode});

  @override
  State<AddtoBag> createState() => _AddtoBagState();
}
bool packagefound=true;
bool  isloading=true;

  // "name":"vishnu vardhan reddy",
  // "_id":"bhj2bjky223",
  // "package":"South Indian Meals"
class _AddtoBagState extends State<AddtoBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // appBar: new AppBar(),
      body: isloading==false?SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // Details(key1: "Name",value: widget.packagedetails["name"],),
              // Details(key1: "Address",value:widget.packagedetails["address"],),
              // Details(key1: "Package",value: widget.packagedetails["package"],),
              
              // Details(key1: "Mobile Number",value: widget.packagedetails["mobile"],),
              
              Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Text("Contents",style: TextStyle(
            color: Color(0XFF808080),fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1.3
          ),),
              ),
        
        
              Padding(
         padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Text("${ widget.packagedetails["package"]["packagename"]}",style: TextStyle(
            color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
          ),),
              ),
              
        
        
        
               Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Text("Delivery",style: TextStyle(
            color: Color(0XFF808080),fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1.3
          ),),
              ),
        
        
              Padding(
         padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Text("${widget.packagedetails["package"]["address"]}",style: TextStyle(
            color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
          ),),
              ),
        
              Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Divider(
            thickness: 2,
            color: Color(0xff808080),
          ),
              ),
        
        
               Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Text("Customer Details",style: TextStyle(
            color: Color(0XFF808080),fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1.3
          ),),
              ),
        
              Padding(
           padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
        
         Container(
           width: 200,
          //  color: Colors.red,
           child: Text("${widget.packagedetails["package"]["name"]}",style: TextStyle(
                color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
              ),overflow: TextOverflow.ellipsis,),
         ),
        
        CupertinoButton(
          padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
          color: Color(0xff0F50F3),
          child: Icon(Icons.call), onPressed: (){
            launch("tel:+91"+widget.packagedetails["package"]["mobile"]);
          })
        
        
          ],),
              ),
              
              
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              //   child:   CupertinoButton(
              //     color: Color(0xff3754D1),
              //     child: Text("ADD TO BAG",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21),), onPressed: (){
          
              //   }),
              // )
        
        
        
               Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
           child: SlideAction(
             innerColor: Colors.black,
             outerColor: Colors.white,
             
                           
                           text: "Add To Bag",
                           onSubmit: (){
        
        
        
        addtobag();
        
        
        
                           },
                         ),
               ),
          ],),
        ),
      ):Center(child: CircularProgressIndicator(),),
    );


    
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdetailsfromserver();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

void getdetailsfromserver(){

server.post(Uri.parse(apihandler.baseurl+"getdeliverypackage"),body: {
"barcode":widget.barcode
}
).then((value) {
print({
  "debug":"codeerw",
  "value":value.body
});

if(value.statusCode==200){


  if(jsonDecode(value.body).length>0){
    setState(() {
     isloading=false;
  widget.packagedetails=jsonDecode(value.body)[0];
    
});
  }
  else{
setState(() {
   isloading=false;
  packagefound=false;
});
  }
}
else{

  setState(() {
    isloading=false;
  });
}

});


}



  void addtobag(){


server.post(Uri.parse(apihandler.baseurl+"addtobag"),body: {
 "barcode":widget.barcode,
 "riderid":userdetails.userid
}).then((value) {

print({
  "code":"34yu3i43",
  "status":value.statusCode,
  "data":value.body
});
if(value.statusCode==200){
print(value.statusCode);


ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Package Added To Bag")));

Future.delayed(Duration(seconds: 2)).then((value){

  Navigator.pop(context);
});


}
else{

ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  
  backgroundColor: Colors.red,
  content: Text(jsonDecode(value.body)["msg"])));



}



});


  }
}



class Details extends StatelessWidget {
  var key1;
  var value;
  Details({this.key1,this.value});
  // const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
 padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
  child:   Row(children: [
  
          // Figma Flutter Generator OwnercustodiannameWidget - TEXT
        Text('$key1:', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Open Sans',
          fontSize: 16,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.w600,
          height: 1
        ),),
        SizedBox(width: 10,),
              // Figma Flutter Generator OptigatormedicalsWidget - TEXT
        Text('$value', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Open Sans',
          fontSize: 16,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1
        ),)
  ],),
);

  }
}
