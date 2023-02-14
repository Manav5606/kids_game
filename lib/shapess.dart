import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Shapess extends StatefulWidget {
  const Shapess({Key key}) : super(key: key);

  @override
  State<Shapess> createState() => _ShapessState();
}

class _ShapessState extends State<Shapess> {
  
  final text = [
    "square",
    "triangle",
    "rectangle",
    "circle",
    "rhombus",
    "oval",
    "pentagon",
    "hexagon",
    "octagon",
    "heart",
    "star",
  ];

  final images = [
    'square.png',
    'triangle.png',
    'rectangle.png',
    'circle.png',
    'rhombus.png',
    'oval.png',
    'pentagon.png',
    'hexagon.png',
    'octagon.png',
    'heart.png',
    'star.png',
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
            "Shapes",
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
            itemCount: images.length,
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
                          // color: Color.fromRGBO(255, 144, 81, 0.2),
                          // border:Border.all(color: Colors.red),
                          // borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                        image: ExactAssetImage('assets/shapes/'+images[index]),
                        fit: BoxFit.cover),
                        ),
                    
                    ),
              );
            });
      }),
    );
  }
}
