// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class CreditsPage extends StatelessWidget {
  BoxDecoration creditsContDeco =
      BoxDecoration(border: Border(left: BorderSide(color: Colors.blue, width: 4)));
  EdgeInsets creditsPadding = const EdgeInsets.symmetric(horizontal: 10);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: creditsContDeco,
                  child: Column(children: [
                    Text(" Contributors:",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                    Text("   - Pinak Parate\n   - Yug Patil",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                        )),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 3,
                    indent: 130,
                    endIndent: 130,
                    color: Colors.white54,
                  ),
                ),
                Container(
                  decoration: creditsContDeco,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: creditsPadding,
                      child: Text("Illustrations made by:",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    ),
                    Text("          - Pinak Parate\n          - Yug Patil",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                        )),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 3,
                    indent: 130,
                    endIndent: 130,
                    color: Colors.white54,
                  ),
                ),
                Container(
                  decoration: creditsContDeco,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: creditsPadding,
                        child: Text("UI/UX design made by:",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 34,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                      ),
                      Text("          - Yug Patil",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 3,
                    indent: 130,
                    endIndent: 130,
                    color: Colors.white54,
                  ),
                ),
                Container(
                  decoration: creditsContDeco,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: creditsPadding,
                      child: Text("App's backend done by:",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    ),
                    Text("          - Pinak Parate",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                        )),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 3,
                    indent: 130,
                    endIndent: 130,
                    color: Colors.white54,
                  ),
                ),
                Container(
                  decoration: creditsContDeco,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: creditsPadding,
                      child: Text("Info extracted by:",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    ),
                    Text("          - Yug Patil",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                        )),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 3,
                    indent: 130,
                    endIndent: 130,
                    color: Colors.white54,
                  ),
                ),
              ]),
        ));
  }
}
