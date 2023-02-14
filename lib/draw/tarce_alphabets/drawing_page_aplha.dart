import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_game/draw/tarce_alphabets/mobile.dart';
import 'package:kids_game/draw/tarce_alphabets/tablet.dart';
import 'package:kids_game/draw/trace_number/sketcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:kids_game/draw/trace_number/drawn_line.dart';


class DrawingPageAlpha extends StatefulWidget {
  @override
  _DrawingPageAlphaState createState() => _DrawingPageAlphaState();
}

class _DrawingPageAlphaState extends State<DrawingPageAlpha> {

final controller  = ScrollController();
int item = 0;
 final text = [
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

  static const crossAxisCount = 1;
  get newItemCount => (text.length/crossAxisCount).round();

  void jumpToItem(int item){
    final width = controller.position.maxScrollExtent + context.size.width;
    final value = item/newItemCount * width;
    controller.jumpTo(value);
  }

  

  GlobalKey _globalKey = new GlobalKey();
  List<DrawnLine> lines = <DrawnLine>[];
  DrawnLine line;
   
  Color selectedColor = Colors.black;
  double selectedWidth = 5.0;

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
          buildPageinationBackward(),
          buildPageinationForward(),
          builAppBar()
        ],
      ),
    );
  }

  Widget buildCurrentPath(BuildContext context) {
    return GestureDetector(
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: RepaintBoundary(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
         
          padding: EdgeInsets.all(4.0),
          color: Colors.transparent,
          alignment: Alignment.topLeft,
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

  Widget buildNum(BuildContext context){
    
    return Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
           if (constraints.maxWidth > 600) {
              return tablett();
            } else {
              return mobilee();
            }
         
        },
        ),
      );
    
  }

  Widget tablett(){
    return Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          
          return GridView.builder(
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // childAspectRatio: 1,
                // crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              scrollDirection: Axis.horizontal,
              controller: controller,
              // padding: const EdgeInsets.all(10),
                // padding: const EdgeInsets.only(bottom:10),
              itemCount: text.length,
              
              itemBuilder: (context, index) {
                final item = text[index];
                var itemm = text[index]; 
                
                return Container(
                  height: 400,
                  width: 400,
                //  color: Colors.red,
                    child: Padding(
                      padding: (itemm == "M" || itemm == "W") ? EdgeInsets.only(left:MediaQuery.of(context).size.width/2) : EdgeInsets.only(left:MediaQuery.of(context).size.width/1.55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            
                            text[index],
                            style:  GoogleFonts.ralewayDots(
                              textStyle: itemm == "W" ? TextStyle(fontSize: MediaQuery.of(context).size.height*0.7
                            ):TextStyle(fontSize: MediaQuery.of(context).size.height*0.7
                            ),
                            ),
                          ),
                        ],
                      ),
                    ));
              });
        }),
      );
  }

  Widget mobilee() {
    return Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return GridView.builder(
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // childAspectRatio: 1,
                // crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              scrollDirection: Axis.horizontal,
              controller: controller,
              // padding: const EdgeInsets.all(10),
                // padding: const EdgeInsets.only(bottom:10),
              itemCount: text.length,
              
              itemBuilder: (context, index) {
                final item = text[index];
                var itemm = text[index]; 
                
                return Container(
                  height: 400,
                  width: 400,
                 
                    child: Padding(
                      padding: (itemm == "M" || itemm == "W") ? EdgeInsets.only(left:MediaQuery.of(context).size.width/12) : EdgeInsets.only(left:MediaQuery.of(context).size.width/6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            
                            text[index],
                            style:  GoogleFonts.ralewayDots(
                              textStyle: itemm == "W" ? TextStyle(fontSize: MediaQuery.of(context).size.height*0.35
                            ):TextStyle(fontSize: MediaQuery.of(context).size.height*0.4
                            ),
                            ),
                          ),
                        ],
                      ),
                    ));
              });
        }),
      );
  }

   Widget builAppBar(){
   return 
         Container(
          height: 100,
          width: 100,
          // color: Colors.red,
           child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,size: 100,),
           ),
         );
         
  }

  Widget buildNumber(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        height: 400,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            "1",
            style: GoogleFonts.ralewayDots(
              textStyle: TextStyle(fontSize: 250,color: Colors.black)
            )
          ),
        ),
      ),
    );
  }

  Widget buildAllPaths(BuildContext context) {
    return RepaintBoundary(
      key: _globalKey,
      child: Container(
        width: 200,
        height: MediaQuery.of(context).size.height,
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

  Widget buildPageinationBackward() {
    return Positioned(
      bottom: 40.0,
      left:10.0 ,
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios,size: 50,color: Color.fromRGBO(255, 144, 81, 1),),
        // heroTag: Text("text[index]"),
        // onPressed: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Page1()),
        // ),
        onPressed: () {
          
         item = item - 1 < 0 ? item: item - 1;
         jumpToItem(item);
         setState(() {
      lines = [];
      line = null;
    });
        },
        
      ),
    );
  }

  Widget buildPageinationForward() {
    return Positioned(
      bottom: 40.0,
      right:10.0 ,
      child: IconButton(
        icon: Icon(Icons.arrow_forward_ios,size: 50,color: Color.fromRGBO(255, 144, 81, 1),),
        onPressed: () {
          
         item = item + 1 >= newItemCount ? item: item + 1;
         
         jumpToItem(item);
         setState(() {
      lines = [];
      line = null;
    });
        },
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
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
