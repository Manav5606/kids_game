import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Numbers extends StatefulWidget {
  const Numbers({Key key}) : super(key: key);

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
   String A = "";
  final num = [
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25",
"26",
"27",
"28",
"29",
"30",
"31",
"32",
"33",
"34",
"35",
"36",
"37",
"38",
"39",
"40",
"41",
"42",
"43",
"44",
"45",
"46",
"47",
"48",
"49",
"50",
"51",
"52",
"53",
"54",
"55",
"56",
"57",
"58",
"59",
"60",
"61",
"62",
"63",
"64",
"65",
"66",
"67",
"68",
"69",
"70",
"71",
"72",
"73",
"74",
"75",
"76",
"77",
"78",
"79",
"80",
"81",
"82",
"83",
"84",
"85",
"86",
"87",
"88",
"89",
"90",
"91",
"92",
"93",
"94",
"95",
"96",
"97",
"98",
"99",
"100",
  ];

  final text = [
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25",
"26",
"27",
"28",
"29",
"30",
"31",
"32",
"33",
"34",
"35",
"36",
"37",
"38",
"39",
"40",
"41",
"42",
"43",
"44",
"45",
"46",
"47",
"48",
"49",
"50",
"51",
"52",
"53",
"54",
"55",
"56",
"57",
"58",
"59",
"60",
"61",
"62",
"63",
"64",
"65",
"66",
"67",
"68",
"69",
"70",
"71",
"72",
"73",
"74",
"75",
"76",
"77",
"78",
"79",
"80",
"81",
"82",
"83",
"84",
"85",
"86",
"87",
"88",
"89",
"90",
"91",
"92",
"93",
"94",
"95",
"96",
"97",
"98",
"99",
"100",
  ];

  final colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.amber,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightGreenAccent,
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.amber,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightGreenAccent,
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.amber,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.tealAccent,
     Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.amber,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightGreenAccent,
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.indigo,

  ];

final TextToSpeech tts = TextToSpeech();
  //  list of text like A for Arjuna From A to Z

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04, left: MediaQuery.of(context).size.width * 0.02),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 209, 96, 229),
        elevation: 50,
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(13),
              bottomLeft: Radius.circular(13)),
        ),
        title:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
          child:  Text(
            "Numbers",
            style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.04),
          ),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return GridView.builder(
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // crossAxisCount: 2,
              crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
              mainAxisSpacing: 40,
              crossAxisSpacing: 40,
            ),
            padding: const EdgeInsets.all(10),
              // padding: const EdgeInsets.only(top:10),
            itemCount: num.length,
            itemBuilder: (context, index) {
              return Bounce(
                duration: const Duration(milliseconds: 100),
                onPressed: () async{
                  // rectangle_Ttsspeak();
                 await tts.setLanguage("en-IN");
      // await tts.setPitch(10000000);
                // await tts.setVolume(1);
                await tts.setRate(0.5);
                await tts.speak(text[index]);
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 144, 81, 0.2),
                          border:Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                      // color: Colors.black,
                        // image: DecorationImage(
                        // image: ExactAssetImage('assets/images/rectangle.jpeg'),
                        // fit: BoxFit.fitHeight),
                        ),
                    child: Center(
                      child: Text(
                        text[index],
                        style:  TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.1, fontWeight: FontWeight.bold,color: colors[index]),
                      ),
                    )),
              );
            });
      }),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:flutter_bounce/flutter_bounce.dart';
// import 'package:text_to_speech/text_to_speech.dart';

// class Numbers extends StatefulWidget {
//   const Numbers({Key? key}) : super(key: key);

//   @override
//   State<Numbers> createState() => _NumbersState();
// }

// class _NumbersState extends State<Numbers> {
//   // final FlutterTts flutterTts = FlutterTts();
//   final TextToSpeech tts = TextToSpeech();

//   @override
//   Widget build(BuildContext context) {
   

//     Future One_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("One One One");
//     }

//     Future Two_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(0.001);
//       await tts.setRate(0.1);
//       await tts.speak("Two Two Two");
//     }

//     Future Three_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Three Three Three");
//     }

//     Future Four_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Four Four Four");
//     }

//     Future Five_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Five Five Five");
//     }

//     Future Six_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Six Six Six");
//     }

//     Future Seven_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Seven Seven Seven");
//     }

//     Future Eight_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Eight Eight Eight");
//     }

//     Future Nine_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Nine Nine Nine");
//     }

//     Future Ten_ttsspeak() async {
//       await tts.setLanguage("en-IN");
//       // await tts.setPitch(1);
//       await tts.setRate(0.1);
//       await tts.speak("Ten Ten Ten");
//     }

//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//            onPressed: (){
//         Navigator.pop(context);
//       },
//       icon:const Padding(
//         padding: EdgeInsets.only(top:28.0,left: 20),
//         child: Icon(Icons.arrow_back_ios),
//       ), 
//         ),
//         backgroundColor: const Color.fromARGB(255, 209, 96, 229),
//         elevation: 50,
//         centerTitle: true,
//         toolbarHeight: MediaQuery.of(context).size.height*0.12,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(13),
//               bottomLeft: Radius.circular(13)),
//         ),
        
//         title: const Padding(
//           padding: EdgeInsets.only(top: 28.0),
//           child: Text(
//             "Numbers",
//             style: TextStyle(fontSize: 25),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.02),
//               child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//                 Bounce(
//                   // onPressed: () => AudioPlayer().play(AssetSource('assets/audio/one.mp3')),
//                   onPressed: () => One_ttsspeak(),
//                   duration: const Duration(seconds: 1),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.3,
//                     width: MediaQuery.of(context).size.width * 0.15,
//                     decoration: BoxDecoration(
//                       boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.purple,
//                       image: const DecorationImage(
//                         image: AssetImage('assets/images/11.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Bounce(
//                   onPressed: () => Two_ttsspeak(),
//                   duration: const Duration(seconds: 1),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.3,
//                     width: MediaQuery.of(context).size.width * 0.15,
//                     decoration: BoxDecoration(
//                       boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.purple,
//                       image: const DecorationImage(
//                         image: AssetImage('assets/images/2.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),

//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.05,
//             ),
//             //another Row

//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//               Bounce(
//                 onPressed: () => Three_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/3.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Bounce(
//                 onPressed: () => Four_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/4.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ]),

//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.05,
//             ),
//             // another Row

//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//               Bounce(
//                 onPressed: () => Five_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/5.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Bounce(
//                 onPressed: () => Six_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/6.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.05,
//             ),

//             // another Row

//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//               Bounce(
//                 onPressed: () => Seven_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/7.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Bounce(
//                 onPressed: () => Eight_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/8.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ]),

//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.05,
//             ),

//             //another Row

//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//               Bounce(
//                 onPressed: () => Nine_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/9.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Bounce(
//                 onPressed: () => Ten_ttsspeak(),
//                 duration: const Duration(seconds: 1),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.15,
//                   decoration: BoxDecoration(
//                     boxShadow: const[
//                         BoxShadow(
//                           color:Color.fromARGB(255, 239, 239, 63),
//                           spreadRadius: 5,
//                           blurRadius: 15
//                         )
//                         ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.purple,
//                     image: const DecorationImage(
//                       image: AssetImage('assets/images/10.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
