import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Alphabets_Inside extends StatefulWidget {
  const Alphabets_Inside({Key key}) : super(key: key);

  @override
  State<Alphabets_Inside> createState() => _Alphabets_InsideState();
}

class _Alphabets_InsideState extends State<Alphabets_Inside> {
  final colors = [
    Color.fromRGBO(255, 144, 81, 1),
    Color.fromARGB(255, 165, 88, 253),
    Color.fromRGBO(129, 190, 255, 1),
    Color.fromRGBO(114, 78, 140, 1),

    //  Color.fromRGBO(252,208,73,1),
  ];

  final images = [
    'lower_case.png',
    'trace_lower_case.jpg',
    'alpha.webp',
    'Trace_A.png'

    // 'alpha.webp',
    // 'alphaa.png',
    // 'shapes.webp',
  ];
  final route = [
    "/Learn_Lower_Case_Aplhabets",
    "/Trace_Lower_Case_Aplhabets",
    "/Learn_aplhabets",
    "/tracealpha",
  ];
  final learn = [
    "small letters",
    "Trace small letters",
    "Capital Letters",
    "Trace Caital Letters",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Scaffold(
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
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(13),
                bottomLeft: Radius.circular(13)),
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 28.0),
            child: Text(
              "Numbers",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            child: GridView.builder(
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisCount: 2,
                  crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 40,
                ),
                padding: const EdgeInsets.all(10),
                itemCount: learn.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          Navigator.pushNamed(context, route[index]);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => DetailScreen(note: route[index])));
                          // Navigator.of(context).push(_createoute());
                        }),
                        child: Container(
                          width: 250,
                          height: 125,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: colors[index].withOpacity(1),
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(20),

                            // image: DecorationImage(
                            // image: ExactAssetImage('assets/images/rectangle.jpeg'),
                            // fit: BoxFit.fitHeight),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Color.fromRGBO(255, 144, 81, 1),
                            child: ClipOval(
                                child: Image.asset(
                              'assets/images/' + images[index],
                              scale: 1.2,
                            )),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Text(
                        learn[index],
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  );
                }),
          );
        }),
      ),
    );
  }
}
