import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Aplhabets extends StatefulWidget {
  const Aplhabets({Key? key}) : super(key: key);

  @override
  State<Aplhabets> createState() => _AplhabetsState();
}

class _AplhabetsState extends State<Aplhabets> {
  late String A = "";
  final alpha = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];

  final text = [
    "A for Apple",
    "B for Ball",
    "C for Cat",
    "D for Dog",
    "E for Elephant",
    "F for Fish",
    "G for Giraffe",
    "H for Horse",
    "I for Ice Cream",
    "J for Jelly",
    "K for Kite",
    "L for Lion",
    "M for Monkey",
    "N for Nose",
    "O for Orange",
    "P for Parrot",
    "Q for Queen",
    "R for Rabbit",
    "S for Snake",
    "T for Tiger",
    "U for Umbrella",
    "V for Van",
    "W for Watermelon",
    "X for Xylophone",
    "Y for Yoyo",
    "Z for Zebra",
  ];

  final colors = [
   Colors.red,
    Colors.orange,
    Colors.purpleAccent,
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
  ];

final TextToSpeech tts = TextToSpeech();
  //  list of colors From 1 to 100

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Padding(
            padding: EdgeInsets.only(top: 28.0, left: 20),
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
        title: const Padding(
          padding: EdgeInsets.only(top: 28.0),
          child: Text(
            "Alphabets",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return GridView.builder(
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
              mainAxisSpacing: 40,
              crossAxisSpacing: 40,
            ),
            padding: const EdgeInsets.all(10),
            itemCount: alpha.length,
            itemBuilder: (context, index) {
              return Bounce(
                duration: const Duration(milliseconds: 100),
                onPressed: () async{
                  // rectangle_Ttsspeak();
                
                 await tts.setLanguage("en-IN");
                //  await tts.setVolume(1);
                //  await tts.setPitch(100);
                 await tts.setRate(0.5);
                 await tts.speak(text[index]);
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration:  BoxDecoration(
                          color: Color.fromRGBO(255, 144, 81, 0.2),
                          border:Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                        // image: DecorationImage(
                        // image: ExactAssetImage('assets/images/rectangle.jpeg'),
                        // fit: BoxFit.fitHeight),
                        ),
                    child: Center(
                      child: Text(
                        alpha[index],
                        style:  TextStyle(
                            fontSize: 120, fontWeight: FontWeight.bold,color: colors[index]),
                      ),
                    )),
              );
            });
      }),
    );
  }
}
