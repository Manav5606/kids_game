import 'package:flutter/material.dart';
import 'package:kids_game/alphabets.dart';
import 'package:kids_game/new.dart';
import 'package:kids_game/numbers.dart';
import 'package:kids_game/shapes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 96, 229),
      ),
      body: Container(
        // color: Colors.red,
        alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (() {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Numbers()));
                  Navigator.of(context).push(_createRoute());
                }),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/123.webp'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                alignment: Alignment.center,
                  child: Container(
                     height: MediaQuery.of(context).size.height * 0.285,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple,
                    image: DecorationImage(
                      image: AssetImage('assets/images/123.webp'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  ),
                  
                ),
              ),

              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
              ),
              // shapes

               GestureDetector(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Shapes()));
                  // Navigator.of(context).push(_createoute());
                }),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/123.webp'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                alignment: Alignment.center,
                  child: Container(
                     height: MediaQuery.of(context).size.height * 0.285,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple,
                    image: DecorationImage(
                      image: AssetImage('assets/images/123.webp'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  ),
                  
                ),
              ),

              GestureDetector(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const New()));
                  // Navigator.of(context).push(_createoute());
                }),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/123.webp'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                alignment: Alignment.center,
                  child: Container(
                     height: MediaQuery.of(context).size.height * 0.285,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple,
                    image: DecorationImage(
                      image: AssetImage('assets/images/123.webp'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  ),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Numbers(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}