import 'package:flutter/material.dart';

class DrawScreen extends StatefulWidget {
  @override
  _DrawScreenState createState() => _DrawScreenState();
}

class _DrawScreenState extends State<DrawScreen> {
  List<Offset> _points = [];
  DateTime _lastTap;
  List<List<Offset>> _allPoints = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepaintBoundary(
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.distanceSquared > 0) {
              setState(() {
                // _points = List.from(_points)..add(details.localPosition);
                _points = List.from(_points)
                  ..add(Offset(details.localPosition.dx.roundToDouble(),
                      details.localPosition.dy.roundToDouble()));
              });
            }
          },
          //  onTapDown: (details) {
          //     final now = DateTime.now();
          //     if (_lastTap == null || now.difference(_lastTap).inMilliseconds > 200) {
          //       setState(() {
          //         _lastTap = now;
          //         _points = List.from(_points)..add(details.localPosition);
          //       });
          //     }
          //   },
          onTapDown: (details) {
            final now = DateTime.now();
            if (_lastTap == null ||
                now.difference(_lastTap).inMilliseconds > 200) {
              setState(() {
                _lastTap = now;
                // _points = List.from(_points)..add(details.localPosition);
                _points = List.from(_points)
                  ..add(Offset(details.localPosition.dx.roundToDouble(),
                      details.localPosition.dy.roundToDouble()));
              });
            }
          },
          onPanEnd: (details) {
            setState(() {
              _allPoints = List.from(_allPoints)
                ..add(List.unmodifiable(_points));
              _points = [];
            });
          },
          // onPanEnd: (details) => _points.add(null),
          child: RepaintBoundary(
            child: CustomPaint(
              isComplex: false,
              painter: LiveDrawPainter(_allPoints),
              // child: Container(
              //   height: 500,
              //   width: 500,
              // ),
              child: Container(
                height: 500,
                width: 500,
                decoration:  BoxDecoration(
                  color: Colors.transparent,
                    image: DecorationImage(image: AssetImage('assets/images/rectangle.jpeg'))
                ),
              ),
              size: Size.infinite,
            ),
          ),
        ),
      ),
    );
  }
}

class LiveDrawPainter extends CustomPainter {
  LiveDrawPainter(this.points);
  final List<List<Offset>> points;
  // final List<Offset> points;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (var pointList in points) {
      for (int i = 0; i < pointList.length - 1; i++) {
        if (pointList[i] != null && pointList[i + 1] != null) {
          canvas.drawLine(pointList[i], pointList[i + 1], paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(LiveDrawPainter oldDelegate) =>
      oldDelegate.points != points;
}








// import 'package:flutter/material.dart';

// class Notepad extends StatefulWidget {
//   final Rect? area;

//   Notepad({this.area});
//   @override
//   _NotepadState createState() => _NotepadState();
// }

// class _NotepadState extends State<Notepad> {
//   final _paint = Paint()
//     ..color = Colors.black
//     ..strokeCap = StrokeCap.round
//     ..strokeWidth = 5.0;
    
//   var _points = <Offset>[];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onPanUpdate: (details) {
//           // _points.add(details.localPosition);
//           // setState(() {});
//           if (widget.area!.contains(details.globalPosition)) {
//             setState(() {
//               _points = List.from(_points)..add(details.localPosition);
//             });
//           }
//         },
//         onPanEnd: (details) => _points.clear(),
//         child: InkWell(

//           child: CustomPaint(
//             painter: _DrawingLinePainter(_points, _paint),
//             child: Container(
//               height: double.infinity,
//               width: double.infinity,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _DrawingLinePainter extends CustomPainter {
//   _DrawingLinePainter(this.points, this.paintt);

//   final List<Offset> points;
//   final Paint paintt;

//   @override
//   void paint(Canvas canvas, Size size) {
     


//     for (int i = 0; i < points.length - 1; i++) {
//       if (points[i] != null && points[i + 1] != null)
//         canvas.drawLine(points[i], points[i + 1], paintt);
//     }
//   }

//   @override
//   bool shouldRepaint(_DrawingLinePainter oldDelegate) {
//     return oldDelegate.points != points;
//   }
// }



