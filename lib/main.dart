// import 'package:device_preview/device_preview.dart';
// @dart=2.7
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:kids_game/One_inside/Lower_case/Trace_lower_case_alphabets.dart';
import 'package:kids_game/One_inside/Lower_case/lowercase.dart';
import 'package:kids_game/One_inside/number_inside.dart';
import 'package:kids_game/Splash.dart';
import 'package:kids_game/alphabets.dart';
import 'package:kids_game/draw.dart';
import 'package:kids_game/draw/tarce_alphabets/drawing_page_aplha.dart';
import 'package:kids_game/draw/trace_number/curves_line.dart';
import 'package:kids_game/draw/trace_number/opp_slanting_lines.dart';
import 'package:kids_game/draw/trace_number/slanting_lines.dart';
import 'package:kids_game/draw/trace_number/standing_lines.dart';
import 'package:kids_game/new.dart';
import 'package:kids_game/numbers.dart';
import 'package:kids_game/shapess.dart';
import 'package:kids_game/splash.dart';

import 'One_inside/alphabets_inside.dart';
import 'One_inside/line_inside.dart';
import 'draw/trace_number/draw_four_lines.dart';
import 'draw/trace_number/drawing_page.dart';
import 'package:device_preview/device_preview.dart';

import 'draw/trace_number/sleeping_lines.dart';


void main() {
  runApp(const MyApp());
}

// void main() => runApp(
//   DevicePreview(
//     // enabled: !kReleaseMode,
//     builder: (context) => const MyApp(), // Wrap your app
//   ),
// );

// flutter code to draw paints on conatiner by user

//  void main() {
//   runApp(const MyApp());
// }
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',  
  routes: {  
    // When navigating to the "/" route, build the HomeScreen widget.  
    '/': (context) =>  New(),  
    // When navigating to the "/second" route, build the SecondScreen widget.  
    '/num': (context) => Numbers_inside(),  
    '/alphabets': (context) => Alphabets_Inside(), 
    '/lines': (context) => Line_Inside(), 
    '/shapes': (context) => const Shapess(),  
    '/Learn_numbers': (context) => const Numbers(),  
    '/Learn_aplhabets': (context) => const Aplhabets(),  
    '/tracealpha':(context) => DrawingPageAlpha(), 
    '/Learn_Lower_Case_Aplhabets': (context) => const Lower_Case_Alphabets(),  
    '/Trace_Lower_Case_Aplhabets': (context) => Trace_Lower_Case_Alphabets(),  
    '/insideTraceNumbers':(context) => DrawingPage(),  

    '/insideWriteLines':(context) => DrawLines(),  
    '/insideTraceStandingLines':(context) => Standing_Lines(),  
    '/insideTraceSleepingLines':(context) => Sleeping_Lines(),  
    '/insideTraceSlantingLines':(context) => Slanting_Lines(),  
    '/insideTraceOppSlantingLines':(context) => Opp_Slanting_Lines(),  
    '/insideTraceCurvesLines':(context) => Curve_Lines(),  
      
    
  },  
      // home: const Home(),
    );
  }
}

