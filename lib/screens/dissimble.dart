import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:travelme/screens/alldata.dart';
import 'package:travelme/screens/transportofbike.dart';
import 'package:travelme/widgets/card.dart';
class DismissibleExample extends StatefulWidget { 


  
  @override 
  _DismissibleExampleState createState() => _DismissibleExampleState(); 
} 
  

class _DismissibleExampleState extends State<DismissibleExample> { 
  
  // Sample list of items 
 
  List<String> itemsDay = ["DAY1","DAY2"]; 
  List<String> itemsroute = ["DAY2","DAY3"]; 
  List<String> itemsDistance = []; 
  List<String> itemsRoadCondition = []; 
  List<String> itemsMostimort = []; 
  List<String> itemswhretostay = []; 

//    void fetch()async{
//     http.Response day =await http.post(Uri.parse("http://192.168.70.184:3000/fetchday"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"wayto":"Ladakh"}));
//  http.Response route =await http.post(Uri.parse("http://192.168.70.184:3000/fetchroute"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"wayto":"Ladakh"}));
//  http.Response distance =await http.post(Uri.parse("http://192.168.70.184:3000/fetchdistance"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"wayto":"Ladakh"}));
// //  http.Response roadconditon =await http.post(Uri.parse("http://192.168.70.184:3000/fetchRoadcondition"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"wayto":"Ladakh"}));
// //  http.Response mostimport =await http.post(Uri.parse("http://192.168.70.184:3000/fetchmostimport"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"wayto":"Ladakh"}));
// //  http.Response stay =await http.post(Uri.parse("http://192.168.70.184:3000/fetchwheretosttay"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"wayto":"Ladakh"}));

//   print(day.body);
//   var oday=jsonDecode(day.body);
//   var oroute=jsonDecode(route.body);
//   var odistance=jsonDecode(distance.body);
//   // var oroad=jsonDecode(roadconditon.body);
//   // var omostimprot=jsonDecode(mostimport.body);
//   // var ostay=jsonDecode(stay.body);

 
//   for(int i =0;i<4;i++){
//     itemsDay.add(oday["${i}"]);
//     itemsroute.add(oroute["${i}"]);
//     itemsDistance.add(odistance["${i}"]);
//     // itemsDay.add(oroad["${i}"]);
//     // itemsDay.add(omostimprot["${i}"]);
//     // itemsDay.add(ostay["${i}"]);
     
//   };
//   setState(() {
    
//   });

   

  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
      // fetch();
  
    
  }
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Contents',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),), 
      ), 
      body: ListView.builder( 
        scrollDirection: Axis.horizontal,
        itemCount: itemsDay.length, 
        itemBuilder: (context, index) { 
          final day = itemsDay[index]; 
          final route = itemsroute[index];
          // final distance = itemsDistance[index]; 
          // final road = itemsRoadCondition[index];
          // final mostim = itemsMostimort[index]; 
          // final stay = itemswhretostay[index];
          return GestureDetector(onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: ((context) => WeatherScreen(distance: "distance", wayto: "Ladkh")))),child: Cardsi(text: day, url: "url", route: route,distance:"distance" ,));
          // return Dismissible( 
          //   key: Key(item), // Unique key for each item 
          //   onDismissed: (direction) { 
          //     // Remove the item from the list when dismissed 
          //     if(index==0){
          //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Transportbike()));
          //     }
              
  
          //     // Show a snackbar to indicate item removal 
          //     ScaffoldMessenger.of(context).showSnackBar( 
          //       SnackBar( 
          //         content: Text('$item dismissed'), 
          //       ), 
          //     ); 
          //   }, 
          //   background: Container( 
          //     color: Colors.red, // Background color when swiping 
          //     child: Icon( 
          //       Icons.delete, 
          //       color: Colors.white, 
          //       size: 36, 
          //     ), 
          //     alignment: Alignment.centerRight, 
          //     padding: EdgeInsets.only(right: 20), 
          //   ), 
          //   child: ListTile(leading: Text(""),
          //     title: Text(item)
          //     , 
          //   ), 
          // ); 
        }, 
      ), 
    ); 
  } 
} 