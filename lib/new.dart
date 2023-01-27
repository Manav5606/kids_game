import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_game/alphabets.dart';
import 'package:kids_game/numbers.dart';
import 'package:kids_game/shapes.dart';
import 'package:store_redirect/store_redirect.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  final colors = [
    Color.fromRGBO(255, 144, 81, 1),
    Color.fromRGBO(129, 190, 255, 1),
    Color.fromRGBO(114, 78, 140, 1),
    //  Color.fromRGBO(252,208,73,1),
  ];

  final images = [
    'num.jpeg',
    'alpha.webp',
    'shapes.webp',
  ];

  final learn = [
    "Numbers 1 To 100",
    "Alphabets A to Z",
    "Shapes",
  ];

  final route = [
    "/num",
    "/alphabets",
    "/shapes",
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      // DeviceOrientation.landscapeLeft,
    ]);
    // Timer(const Duration(seconds: 3),
    //         ()=>Navigator.pushReplacement(context,
    //                                       MaterialPageRoute(builder:
    //                                                         (context) =>
    //                                                         const Numbers()
    //                                                        )
    //                                      )
    //        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.red,
            // ),
            Container(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  StoreRedirect.redirect(
                  androidAppId: "com.example.kids_game",
                  // iOSAppId: "585027354",
                );
                },
                icon: Icon(Icons.share),
                padding: EdgeInsets.only(right: 20, top: 20),
                // alignment: Alignment.center,
                iconSize: 30,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/images/kido3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // height: 70,
                    // width: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose What",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "To Learn",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,

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
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(30),
                                color: colors[index],
                                // image: DecorationImage(
                                // scale: 3.5,
                                // image: AssetImage('assets/images/num.jpeg'),
                                // fit: BoxFit.cover,
                                // ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor:
                                        Color.fromRGBO(255, 144, 81, 1),
                                    child: ClipOval(
                                        child: Image.asset(
                                      'assets/images/' + images[index],
                                      scale: 1.2,
                                    )),
                                  ),
                                  Text(
                                    learn[index],
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

