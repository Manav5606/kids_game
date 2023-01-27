// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/Splash.dart';
import 'package:kids_game/alphabets.dart';
import 'package:kids_game/numbers.dart';
import 'package:kids_game/shapess.dart';


// void main() {
//   runApp(const MyApp());
// }

// void main() => runApp(
//   DevicePreview(
//     // enabled: !kReleaseMode,
//     builder: (context) => const MyApp(), // Wrap your app
//   ),
// );

// flutter code to draw paints on conatiner by user

 void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
    '/': (context) => const Splash(),  
    // When navigating to the "/second" route, build the SecondScreen widget.  
    '/num': (context) => const Numbers(),  
    '/alphabets': (context) => const Aplhabets(),  
    '/shapes': (context) => const Shapess(),  
  },  
      // home: const Home(),
    );
  }
}

