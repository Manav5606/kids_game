import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Shapes extends StatefulWidget {
  const Shapes({Key key}) : super(key: key);

  @override
  State<Shapes> createState() => _ShapesState();
}

class _ShapesState extends State<Shapes> {
   String rectangle = "";
   String circle = "";
   String triangle = "";
   String square = "";
   String pentagon = "";
   String hexagon = "";
   String oval = "";
   String rhombus = "";
   String star = "";
   String heart = "";
   String octagon = "";

  final TextToSpeech tts = TextToSpeech();

  @override
  Widget build(BuildContext context) {

    Future rectangle_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Rectangle Rectangle Rectangle");
    }

    Future circle_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Circle Circle Circle");
    }

    Future triangle_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Triangle Triangle Triangle");
    }

    Future square_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Square Square Square");
    }

    Future pentagon_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Pentagon Pentagon Pentagon");
    }

    Future hexagon_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Hexagon Hexagon Hexagon");
    }

    Future oval_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Oval Oval Oval");
    }

    Future rhombus_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Rhombus Rhombus Rhombus");
    }

    Future star_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Star Star Star");
    }

    Future heart_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Heart Heart Heart");
    }

    Future octagon_Ttsspeak() async {
      await tts.setLanguage("en-IN");
      // await tts.setPitch(1);
      await tts.setRate(0.5);
      await tts.speak("Octagon Octagon Octagon");
    }

    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
           onPressed: (){
        Navigator.pop(context);
      },
      icon:const Padding(
        padding: EdgeInsets.only(top:28.0,left: 20),
        child: Icon(Icons.arrow_back_ios),
      ), 
        ),
        backgroundColor: const Color.fromARGB(255, 209, 96, 229),
        elevation: 50,
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height*0.12,
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
        return GridView.count(
          primary: false,
          crossAxisCount: 2,
          // crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
          padding: const EdgeInsets.all(40),
          children: <Widget>[
           Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                rectangle_Ttsspeak();
                setState(() {
                  rectangle = "Rectangle";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    rectangle = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/rectangle.jpeg'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    rectangle,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                circle_Ttsspeak();
                setState(() {
                  circle = "Circle";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    circle = "";
                  });
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                // color: Colors.green[200],
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  circle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                triangle_Ttsspeak();
                setState(() {
                  triangle = "Triangle";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    triangle = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  child: CustomPaint(
                    painter: TrianglePainter(),
                    child: Text(
                      triangle,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                square_Ttsspeak();
                setState(() {
                  square = "Square";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    square = "";
                  });
                });
              },
              child: Container(
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                // color: Colors.red[200],
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Text(
                  square,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                pentagon_Ttsspeak();
                setState(() {
                  pentagon = "Pentagon";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    pentagon = "";
                  });
                });
              },
              child: Container(
                  // width: 100.00,
                  // height: 100.00,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/pentagon.jpg'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    pentagon,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                hexagon_Ttsspeak();
                setState(() {
                  hexagon = "Hexagon";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    hexagon = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/hexagon.jpg'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    hexagon,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),

             Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                oval_Ttsspeak();
                setState(() {
                  oval = "Oval";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    oval = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/oval.jpg'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    oval,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),

             Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                rhombus_Ttsspeak();
                setState(() {
                  rhombus = "Rhombus";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    rhombus = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/rhombus.jpeg'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    rhombus,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),

             Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                star_Ttsspeak();
                setState(() {
                  star = "Star";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    star = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/star.jpeg'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    star,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),

             Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                heart_Ttsspeak();
                setState(() {
                  heart = "Heart";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    heart = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/heart.png'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    heart,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),

             Bounce(
              duration: const Duration(seconds: 1),
              onPressed: () {
                octagon_Ttsspeak();
                setState(() {
                  octagon = "Octagon";
                });
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    octagon = "";
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/octagon.png'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Text(
                    octagon,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),

             
           
          ],
        );
      }),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.red;
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}




