// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:atl_proto/screens/bodies_pages/bl_ho_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: BlHoFactsPage(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: use_key_in_widget_constructors
class BlHoFactsPage extends StatefulWidget {
  @override
  _BlHoFactsPageState createState() => _BlHoFactsPageState();
}

class _BlHoFactsPageState extends State<BlHoFactsPage> {
  TextStyle contentStyle = GoogleFonts.poppins(
    fontSize: 18,
    color: Colors.white,
  );
  EdgeInsets contentPadding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text("Black Hole"),
          centerTitle: false,
          toolbarHeight: 70,
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 32,
          ),
          backgroundColor: Colors.transparent.withOpacity(1),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BlHoPage()));
                },
                splashColor: Colors.black,
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                iconSize: 32,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            controller: ScrollController(
              initialScrollOffset: 2,
            ),
            child: Stack(children: [
              //SizedBox(height: MediaQuery.of(context).size.height, width: double.infinity,),
              Container(
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: Colors.blue, width: 4)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  Chapter 1 ",
                            style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text("How are black holes formed?",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                              "It all starts with stars, stars that have a mass at least 20 times greater than our sun can turn into black holes.\nWith our first requirement satisfied to create black holes, let’s move on, so stars are mainly composed of hydrogen atoms, there are constant nuclear fusion reactions (converted into helium) in the core of a star to which generates a huge amount of energy. This energy, in the form of radiation pushes against the star's gravity, maintaining a delicate balance between the two forces.",
                              style: contentStyle),
                        ),
                        // that image here.
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/gravity_repel.png"))),
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "As long as there is fusion is the core, the star is stable enough. But for such stars, who have immense mass, the heat and pressure at the core allows them to fuse heavy elements, this happens until it reaches iron. See, the fusion process of iron does not release any energy unlike the previous elements, this causes iron to build up in the fusion process of iron does not release any energy unlike the previous elements, radiation and gravity is broken. Suddenly, the core collapses, within a fraction of a second, the star implodes, moving at a quarter of the speed of light feeding even more mass into the core, resulting in the death of the star, causing a supernova explosion. The entire mass of the star collapses into a black hole, the star implodes, moving at a quarter of the speed of light feeding even more mass into the core, resulting in the death of the star, causing a supernova explosion. The entire mass of the star collapses into a black hole.",
                            style: contentStyle,
                          ),
                        ),
                        Divider(
                          color: Colors.blue.withOpacity(0.6),
                          thickness: 3.5,
                          height: 40,
                          indent: 120,
                          endIndent: 120,
                        ),
                        Text("  Chapter 2 ",
                            style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text("What exactly are black holes?",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "Black holes are one of the most strange, mysterious, dense and yet interesting objects in the universe. If you ever looked at a black hole, you would be looking at its accretion disk around its event horizon, not the actual black hole, because these objects are so dense, they have a gravitational force so high, that even light cannot escape them, hence they look black. The event horizon of a black hole is the point of no escape, this is the black part. To escape, you would need to travel faster than light, in other words, at least for now, that is impossible.",
                            style: contentStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue, width: 4),
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/black hole diagram.png"))),
                          ),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                              "So, you must be wondering, if the event horizon is the \"Black\" part, then what is the \"Hole\" part? It is something called The Singularity. We aren't sure as of now, what it is exactly, it may be infinitely dense with no surface or volume, or something else altogether, but for now, we don't know.",
                              style: contentStyle),
                        ),
                        Divider(
                          color: Colors.blue.withOpacity(0.6),
                          thickness: 3.5,
                          height: 40,
                          indent: 120,
                          endIndent: 120,
                        ),
                      ]),
                ),
              ),
            ])));
  }
}
