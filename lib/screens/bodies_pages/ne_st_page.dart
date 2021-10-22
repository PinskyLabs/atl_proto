// ignore_for_file: prefer_const_constructors

import 'package:atl_proto/home_nav.dart';
import 'package:atl_proto/screens/facts_pages/ne_st_facts.dart';
import 'package:flutter/material.dart';
import 'package:hover_card/hover_card.dart';

void main() {
  runApp(MaterialApp(
    home: NeStPage(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: use_key_in_widget_constructors
class NeStPage extends StatefulWidget {
  @override
  _NeStPageState createState() => _NeStPageState();
}

class _NeStPageState extends State<NeStPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Container(
          height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/new stars bg.jpg",),
            fit: BoxFit.cover)
        ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: InkWell(
                    onDoubleTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NeStFactsPage()));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      height: 480,
                      child: HoverCard(
                        builder: (context, hovering) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage("assets/images/neu sta.png")),
                            ),
                          );
                        },
                        depth: 0,
                        depthColor: Colors.transparent,
                        onTap: () {},
                        shadow: const BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 0,
                          spreadRadius: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 253.4,
                  width: double.infinity,
                  child: GestureDetector(
                    onDoubleTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeForNav()));
                    },
                    child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/spaceship.png")),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
