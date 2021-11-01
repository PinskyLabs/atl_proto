// ignore_for_file: prefer_const_constructors

import 'package:atl_proto/screens/bodies_pages/bl_ho_page.dart';
import 'package:atl_proto/screens/bodies_pages/ne_st_page.dart';
import 'package:atl_proto/screens/facts_pages/bl_ho_facts.dart';
import 'package:atl_proto/screens/facts_pages/da_ma_facts.dart';
import 'package:atl_proto/screens/facts_pages/ne_st_facts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class HomePage extends StatelessWidget {
  double containerHeight = 150;
  TextStyle bodyNameStyle = GoogleFonts.poppins(
    fontSize: 20,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/new stars bg.jpg",
              ),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            titleTextStyle: GoogleFonts.poppins(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            contentTextStyle: GoogleFonts.droidSans(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                            actionsAlignment: MainAxisAlignment.spaceAround,
                            actionsPadding: EdgeInsets.only(top: 5, bottom: 20),
                            contentPadding:
                                EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
                            title: Text(
                              "What do you want to do?",
                              textAlign: TextAlign.center,
                            ),
                            content: Text(
                                "WARNING: As this is a black hole, going too close to this object will result in injury, death, and possible loss of loved ones due to extreme gravity which causes time dilation."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 20),
                                            height: MediaQuery.of(context).size.height / 4,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                                  child: Text(
                                                    "Want more information?",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 21,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                                  child: Text(
                                                    "Learn more about one of the mysterious objects in Outer space and secrets that lies in them.",
                                                    style: GoogleFonts.droidSans(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      BlHoFactsPage()));
                                                        },
                                                        child: Text(
                                                          "Yes",
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.droidSans(
                                                            fontSize: 24,
                                                            fontWeight: FontWeight.w600,
                                                            letterSpacing: 1,
                                                          ),
                                                        )),
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        child: Text(
                                                          "Cancel",
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.droidSans(
                                                            fontSize: 24,
                                                            letterSpacing: 1,
                                                            color: Colors.red,
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Text(
                                  "More Info",
                                  style: GoogleFonts.droidSans(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => BlHoPage()));
                                },
                                child: Text(
                                  "Go Closer",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.droidSans(
                                    fontSize: 22,
                                    color: Colors.red,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  splashColor: Colors.black,
                  splashFactory: NoSplash.splashFactory,
                  child: Hero(
                    tag: "Black Hole Pic",
                    child: Container(
                      height: containerHeight + 140,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image:
                              DecorationImage(image: AssetImage("assets/images/transblaho.png"))),
                    ),
                  ),
                )),
              ]),
          SizedBox(
            height: 0,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              titleTextStyle: GoogleFonts.poppins(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              contentTextStyle: GoogleFonts.droidSans(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              actionsAlignment: MainAxisAlignment.spaceAround,
                              actionsPadding: EdgeInsets.only(top: 5, bottom: 20),
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
                              title: Text(
                                "What do you want to do?",
                                textAlign: TextAlign.center,
                              ),
                              content: Text(
                                  "WARNING: As this is a neutron star, going too close to this object will result in injury, death, and possible loss of loved ones due to extreme gravity which causes time dilation."),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: Container(
                                              margin: const EdgeInsets.symmetric(horizontal: 20),
                                              height: MediaQuery.of(context).size.height / 4,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(vertical: 10),
                                                    child: Text(
                                                      "Want more information?",
                                                      textAlign: TextAlign.center,
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 21,
                                                        fontWeight: FontWeight.w600,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(vertical: 10),
                                                    child: Text(
                                                      "Learn more about one of the mysterious objects in Outer space and secrets that lies in them.",
                                                      style: GoogleFonts.droidSans(
                                                        fontSize: 17,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceAround,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        NeStFactsPage()));
                                                          },
                                                          child: Text(
                                                            "Yes",
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.droidSans(
                                                              fontSize: 24,
                                                              fontWeight: FontWeight.w600,
                                                              letterSpacing: 1,
                                                            ),
                                                          )),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                          },
                                                          child: Text(
                                                            "Cancel",
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.droidSans(
                                                              fontSize: 24,
                                                              letterSpacing: 1,
                                                              color: Colors.red,
                                                            ),
                                                          ))
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Text(
                                    "More Info",
                                    style: GoogleFonts.droidSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => NeStPage()));
                                  },
                                  child: Text(
                                    "Go Closer",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.droidSans(
                                      fontSize: 22,
                                      color: Colors.red,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    splashColor: Colors.white,
                    splashFactory: NoSplash.splashFactory,
                    child: Hero(
                      tag: "Neutron Star Pic",
                      child: Container(
                        height: containerHeight,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(image: AssetImage("assets/images/neu sta.png"))),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              titleTextStyle: GoogleFonts.poppins(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              contentTextStyle: GoogleFonts.droidSans(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              actionsAlignment: MainAxisAlignment.spaceAround,
                              actionsPadding: EdgeInsets.only(top: 5, bottom: 20),
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
                              title: Text(
                                "Want more information?",
                                textAlign: TextAlign.center,
                              ),
                              content: Text(
                                  "Learn more about one of the mysterious objects in Outer space and secrets that lies in them."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => DaMaFactsPage()));
                                    },
                                    child: Text(
                                      "Yes",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.droidSans(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.droidSans(
                                        fontSize: 24,
                                        letterSpacing: 1,
                                        color: Colors.red,
                                      ),
                                    )),
                              ],
                            );
                          });
                    },
                    splashColor: Colors.white,
                    splashFactory: NoSplash.splashFactory,
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage("assets/images/da_ma_cleaned.png"))),
                    ),
                  ),
                ),
              ]),
          SizedBox(height: 20),
          Expanded(
              child: Hero(
                  tag: "Spaceship",
                  child: Image(image: AssetImage("assets/images/spaceship.png"))))
        ],
      ),
    );
  }
}
