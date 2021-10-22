// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Settings",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 56,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              )),
          SizedBox(
            height: 20,
          ),
          Flexible(
              child: SizedBox(
                  height: 60,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "All Music sounds",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Flexible(
                      child: SizedBox(
                        width: 50,
                        child: Switch(
                            value: false,
                            onChanged: (bool newValue) {
                              newValue = true;
                            }),
                      ),
                    )
                  ]))),
        ],
      ),
    );
  }
}
