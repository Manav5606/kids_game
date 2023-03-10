import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_game/draw/trace_number/sketcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:kids_game/draw/trace_number/drawn_line.dart';

class Opp_Slanting_Lines extends StatefulWidget {
  @override
  _Opp_Slanting_LinesState createState() => _Opp_Slanting_LinesState();
}

class _Opp_Slanting_LinesState extends State<Opp_Slanting_Lines> {
 

  final controller = ScrollController();
  

  static const crossAxisCount = 1;

  

//   int determineSize(int index) {
//   if (index > 20) {
//     return 2;
//   } else if (index == 4) {
//     return 4;
//   } else {
//     return 6;
//   }
// }

  EdgeInsets determinePadding(int index) {
    if (index >= 19) {
      return EdgeInsets.only(right: MediaQuery.of(context).size.width / 5);
    } else if (index <= 8) {
      return EdgeInsets.only(left: MediaQuery.of(context).size.width / 4);
    } else if (index == 9) {
      return EdgeInsets.only(left: MediaQuery.of(context).size.width / 15);
    } else {
      return EdgeInsets.only(left: MediaQuery.of(context).size.width / 15);
    }
  }

  GlobalKey _globalKey = new GlobalKey();
  List<DrawnLine> lines = <DrawnLine>[];
  DrawnLine line;

  Color selectedColor = Colors.black;
  double selectedWidth = 8.0;

  StreamController<List<DrawnLine>> linesStreamController =
      StreamController<List<DrawnLine>>.broadcast();
  StreamController<DrawnLine> currentLineStreamController =
      StreamController<DrawnLine>.broadcast();

  Future<void> save() async {
    // try {
    //   RenderRepaintBoundary boundary =
    //       _globalKey.currentContext.findRenderObject() as RenderRepaintBoundary;
    //   ui.Image image = await boundary.toImage();
    //   ByteData byteData =
    //       await image.toByteData(format: ui.ImageByteFormat.png);
    //   Uint8List pngBytes = byteData.buffer.asUint8List();
    //   var saved = await ImageGallerySaver.saveImage(
    //     pngBytes,
    //     quality: 100,
    //     name: DateTime.now().toIso8601String() + ".png",
    //     isReturnImagePathOfIOS: true,
    //   );
    //   print(saved);
    // } catch (e) {
    //   print(e);
    // }
  }

  Future<void> clear() async {
    setState(() {
      lines = [];
      line = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Stack(
        children: [
          buildNum(context),
          buildAllPaths(context),
          buildCurrentPath(context),
          buildStrokeToolbar(),
          buildColorToolbar(),
          // buildPageinationBackward(),
          // buildPageinationForward(),
          builAppBar(),
        ],
      ),
    );
  }

  Widget buildCurrentPath(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: RepaintBoundary(
        child: Container(
          width: MediaQuery.of(context).size.width * 3.2,
          height: MediaQuery.of(context).size.height * 2.2,
          padding: EdgeInsets.all(4.0),
          // color: Colors.red,
          // alignment: Alignment.topLeft,
          child: StreamBuilder<DrawnLine>(
            stream: currentLineStreamController.stream,
            builder: (context, snapshot) {
              return CustomPaint(
                painter: Sketcher(
                  lines: [line],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildNum(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            
            return tablett();
          } else {
            return mobilee();
          }
        },
      ),
    );
  }

  Widget builAppBar() {
    return Container(
      height: 100,
      width: 100,
      // color: Colors.red,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          size: 100,
        ),
      ),
    );
  }

  Widget tablett() {
    // ListView.builder(
    //     itemCount: 4,
    //     itemBuilder: (context, index) {
      
          return SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/opp_slanting_lines.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ));
        // });
  }

  Widget mobilee() {
    // return LayoutBuilder(builder: (context, constraints) {
      // return ListView.builder(
          // itemCount: 4,
          // itemBuilder: (context, index) {
            return SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 1.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/opp_slanting_lines.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ));
          // });
    
  // });
  }

  // Widget buildNumber(BuildContext context) {
  //   return Center(
  //     child: Container(
  //       width: 50,
  //       height: 400,
  //       decoration: BoxDecoration(
  //         // color: Colors.white,
  //         borderRadius: BorderRadius.circular(50),
  //       ),
  //       child: Center(
  //         child: Text(
  //           "1",
  //           style: GoogleFonts.ralewayDots(
  //             textStyle: TextStyle(fontSize: 250,color: Colors.black)
  //           )
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget buildAllPaths(BuildContext context) {
    

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: RepaintBoundary(
        key: _globalKey,
        child: Container(
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height * 2,
          color: Colors.transparent,
          padding: EdgeInsets.all(4.0),
          alignment: Alignment.topLeft,
          child: StreamBuilder<List<DrawnLine>>(
            stream: linesStreamController.stream,
            builder: (context, snapshot) {
              return CustomPaint(
                painter: Sketcher(
                  lines: lines,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

 

  void onPanStart(DragStartDetails details) {
    RenderBox box = context.findRenderObject() as RenderBox;
    Offset point = box.globalToLocal(details.globalPosition);
    line = DrawnLine([point], selectedColor, selectedWidth);
  }

  void onPanUpdate(DragUpdateDetails details) {
    RenderBox box = context.findRenderObject() as RenderBox;
    Offset point = box.globalToLocal(details.globalPosition);

    List<Offset> path = List.from(line.path)..add(point);
    line = DrawnLine(path, selectedColor, selectedWidth);
    currentLineStreamController.add(line);
  }

  void onPanEnd(DragEndDetails details) {
    lines = List.from(lines)..add(line);

    linesStreamController.add(lines);
  }

  Widget buildStrokeToolbar() {
    return Positioned(
      bottom: 180.0,
      right: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildStrokeButton(5.0),
          buildStrokeButton(10.0),
          buildStrokeButton(15.0),
        ],
      ),
    );
  }

 

  Widget buildStrokeButton(double strokeWidth) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedWidth = strokeWidth;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: strokeWidth * 2,
          height: strokeWidth * 2,
          decoration: BoxDecoration(
              color: selectedColor, borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );
  }

  Widget buildColorToolbar() {
    return Positioned(
      top: 40.0,
      right: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildClearButton(),
          Divider(
            height: 10.0,
          ),
          // buildSaveButton(),
          // Divider(
          //   height: 20.0,
          // ),
          buildColorButton(Colors.red),
          buildColorButton(Colors.blueAccent),
          buildColorButton(Colors.deepOrange),
          buildColorButton(Colors.green),
          buildColorButton(Colors.lightBlue),
          buildColorButton(Colors.black),
          buildColorButton(Colors.white),
        ],
      ),
    );
  }

  Widget buildColorButton(Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FloatingActionButton(
        heroTag: Text("tex"),
        mini: true,
        backgroundColor: color,
        child: Container(),
        onPressed: () {
          setState(() {
            selectedColor = color;
          });
        },
      ),
    );
  }

  Widget buildSaveButton() {
    return GestureDetector(
      onTap: save,
      child: CircleAvatar(
        child: Icon(
          Icons.save,
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildClearButton() {
    return GestureDetector(
      onTap: clear,
      child: CircleAvatar(
        child: Icon(
          FlutterIcons.eraser_ent,
          // Icons.create,
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
