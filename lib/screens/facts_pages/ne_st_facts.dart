// ignore_for_file: prefer_const_constructors

import 'package:atl_proto/screens/bodies_pages/ne_st_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: NeStFactsPage(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: use_key_in_widget_constructors
class NeStFactsPage extends StatefulWidget {
  @override
  _NeStFactsPageState createState() => _NeStFactsPageState();
}

class _NeStFactsPageState extends State<NeStFactsPage> {
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
          title: const Text("Neutron Star"),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NeStPage()));
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
                          child: Text("How are neutron stars formed?",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                              "Any star exits because of a fragile balance. The mass of Millions of billions of trillions of tons of hot plasma are being pulled in because of gravity, and squeeze materials together with so much force that nuclei fuse, hydrogen fuses into helium this releases energy which pushes against gravity and tries to escape. As long as this balance exits, stars are stable. Eventually, the hydrogen will be exhausted. In stars that have a mass 8 – 20 times greater than our sun, things get interesting. When the helium is exhausted, for a moment, the balance of pressure and radiation tips, and gravity wins, squeezing the star tighter than before, the core burns hotter and faster while the outer layers of the star swell by hundreds of times fusing heavier and heavier elements. When it reaches iron, it is the death of the star, because unlike the elements that were being fused before, iron is nuclear ash, it has no energy to give and cannot be fused. The fusion suddenly stops and the balance ends. Without the outward pressure from fusion, the core is crushed from the enormous weight of the star above it. ",
                              style: contentStyle),
                        ),
                        // that image here.
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            child: Container(
                              height: 280,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue, width: 4),
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/star_collapses.jpg"))),
                            )),
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
                          child: Text("What is a Neutron star?",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "A neutron star’s mass is around a million times the mass of the Earth but compressed to an object about 25 kilometers wide. It is so dense that the mass of all living humans would fit into one cubic centimeter of neutron star matter. That’s roughly a billion tons in a space the size of a sugar cube. From the outside, a neutron star is unbelievably extreme. Its gravity is the strongest, outside black holes, and, if it were any denser, it would become one. Light is bent around it, meaning you can see the front and parts of the back. Their surfaces reach 1,000,000 degrees Celsius, compared to a measly 6,000 degrees for our Sun. If you tried to go close to one neutron star you’d be spaghettified, which means, that you would be stretched into a noodle like shape and then everything would be ripped apart from you. You’d keep falling towards it at 1/3rd or 2/3rds the speed of light, upon reaching the star you would crash into it releasing an enormous amount of energy.",
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
                        Text("  Chapter 3 ",
                            style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text("What is inside Neutron star?",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "Let’s look inside a neutron star. Although these giant atomic nuclei are stars, in many ways, they’re also like planets, with solid crusts over a liquid core. The crust is extremely hard. The outermost layers are made of iron left over from the supernova, squeezed together in a crystal lattice, with a sea of electrons flowing through them. Going deeper, gravity squeezes nuclei closer together. We find fewer and fewer protons, as most merge to neutrons. Until we reach the base of the crust. Here, nuclei are squeezed together so hard that they start to touch. Protons and neutrons rearrange, making long cylinders or sheets, enormous nuclei with millions of protons and neutrons shaped like spaghetti and lasagna, which physicists call nuclear pasta. Nuclear pasta is so dense that it may be the strongest material in the universe, basically unbreakable. Eventually, beneath the pasta, we reach the core. We’re not sure what the properties of matter are when they’re squeezed this hard. Protons and neutrons might dissolve into an ocean of quarks, a so-called quark-gluon plasma. Some of those quarks might turn into strange quarks, or maybe they just stay protons and neutrons. No one knows for sure, and that’s why we do science.",
                            style: contentStyle,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            child: Container(
                              height: 180,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue, width: 4),
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/inside_neutron_stars.jpg"))),
                            )),
                        Divider(
                          color: Colors.blue.withOpacity(0.6),
                          thickness: 3.5,
                          height: 40,
                          indent: 120,
                          endIndent: 120,
                        ),
                        Text("  Chapter 4 ",
                            style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                        Padding(
                          padding: contentPadding,
                          child: Text("More on Neutron Star",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: contentPadding,
                          child: Text(
                            "When neutron stars first collapse, they begin to spin very, very fast. Neutron stars spin many times per second. This creates pulses because their magnetic field creates a beam of radio waves, which passes every time they spin. These radio pulsars are the best-known type of neutron star. About 2,000 are known of in the Milky Way. These magnetic fields are the strongest in the universe, a quadrillion times stronger than Earth’s after they’re born. They’re called magnetars until they calm down a little. But the absolute best kind of neutron stars are friends with other neutron stars. By radiating away energy as gravitational waves, ripples in spacetime, their orbits can decay, and they can crash into and kill each other in a kilonova explosion that spews out a lot of their guts. When they do, the conditions become so extreme that, for a moment, heavy nuclei are made again. It’s not fusion putting nuclei together this time, but heavy neutron-rich matter falling apart and reassembling.\n\nAnd that’s pretty much it about neutron stars for now.",
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
