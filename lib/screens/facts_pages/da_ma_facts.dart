// ignore_for_file: prefer_const_constructors

import 'package:atl_proto/home_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: DaMaFactsPage(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: use_key_in_widget_constructors
class DaMaFactsPage extends StatefulWidget {
  @override
  _DaMaFactsPageState createState() => _DaMaFactsPageState();
}

class _DaMaFactsPageState extends State<DaMaFactsPage> {
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
          title: const Text("Dark Energy"),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeForNav()));
                },
                splashColor: Colors.black,
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                          child: Text(
                              "*The illustration we showed you in the app for dark energy is our imagination, as of now, there is no real image of what dark energy looks like*",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                        ),
                        Text("  Chapter 1 ",
                            style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text("Introduction",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                              "Matter, as we know it; Atoms, stars and galaxies, planets and trees and us This matter accounts for less than 5% of the known universe. About 25% is dark matter; and 70% is dark energy. Both of which are invisible. This is kind of strange because it suggests that everything, we experience is really only a tiny fraction of reality. But it gets worse. We really have no clue what dark matter and energy are, or how they work. We are pretty sure they exist though.",
                              style: contentStyle),
                        ),
                        // that image here.
                        SizedBox(height: 20),
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
                          child: Text("Introduction to Dark Energy",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "Dark energy is strange and mysterious. We can't detect it, we can't measure it and we can't taste it. But we do see its effects very clearly. In 1929, Edward Hubble examined how the wavelength of light emitted by distant galaxies, shifts towards the red end of the electromagnetic spectrum as it travels through the space. He found that fainter, more distant galaxies showed a large degree of red shift; closer galaxies, not so much. Hubble determined that this was because the universe itself is expanding. The red shift occurs, because the wavelengths of light are stretched as the universe expands. More recent discoveries have shown that, the expansion of the universe is accelerating. Before that, it was thought that the pull of gravity would cause the expansion to either slow down or even retract and collapse in on itself at some point. Space doesn't change its properties as it expands; there's just more of it. New space is constantly created everywhere, galaxies are tight bound clusters of stuff held together by gravity so we don't experience this expansion in our daily lives. But we see it everywhere around us. Wherever there is empty space in the universe, more is forming every second.",
                            style: contentStyle,
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: Colors.blue.withOpacity(0.6),
                          thickness: 3.5,
                          height: 40,
                          indent: 120,
                          endIndent: 120,
                        ),
                        Text("  Chapter 3 ",
                            style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text("What is Dark Energy?",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "So, dark energy seems to be some kind of energy intrinsic to empty space. Energy that is stronger than anything else we know, and it keeps getting stronger as time passes by. Empty space has more energy than everything else in the universe combined. We have multiple ideas about what dark energy might be. One idea is, the dark energy is not a thing, but just a property of space. Empty space is not nothing, it has its own energy. It can generate more space and is quite active. So, as the universe expands, it could be that just more and more space appears to fill the gaps and this leads to a faster expanding universe. This idea is close to an idea that Einstein had back in 1917, of the concept of a cosmological constant, a force that counteracted the force of gravity. The only problem is, that when we tried to calculate the amount of this energy the result was so wrong and weird, that it only added to the confusion. Another idea is, that empty space is full of temporary, virtual particles that spontaneously and continually form from nothing and then disappear into nothing again. The energy form those particles could be dark energy. Or maybe dark energy is an unknown kind of dynamic energy fluid or field which permeates the entire universe, but somehow has the opposite effect on the universe than normal energy and matter. But if it exists, we don't know how and where or how we could detect it. So there are still a lot of questions to answer.",
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
                      ]),
                ),
              ),
            ])));
  }
}
