import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectevent/demo.dart';
import 'page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const JoinGroup(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2e2e4),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(16.1, 16.1, 16.1, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Meetus",
                      style: GoogleFonts.playfair(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          )),
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        children: [
                          SizedBox(
                            child: IconButton(
                              icon: const Icon(
                                Icons.notifications_on_outlined,
                                size: 27,
                              ),
                              onPressed: () {
                                // Handle notification button press
                              },
                            ),
                          ),

                          const SizedBox(
                              width: 13), //gap between icon and profile

                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/iconpng/man.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(16.1, 0, 16.1, 0),
                    child: Text(
                      "Hay, Shofran",
                      style: GoogleFonts.nunito(
                          color: const Color(0xff5b5b5b),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16.1, 0, 16.1, 0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'You have ',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: '3',
                            style: GoogleFonts.nunito(
                              color: const Color(0xff2986cc),
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: ' upcoming',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                ),
              ]),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(16.1, 0, 0, 0),
                    child: Text(
                      "events today",
                      style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const EventPage();
                      }));
                    },
                    icon: Icon(Icons.arrow_forward_outlined),
                    iconSize: 30,
                  )
                ],
              ),
              const SizedBox(height: 15), // for gap between text and cards.

              // list view cards wrapped with sized box
              SizedBox(
                height:
                    310, // this height taken as the "Sized box" Widget height so "List View" Widget also the same size
                child: ListView(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.1, 0, 16.1, 0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // card 1
                    Container(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: 330,
                        decoration: const BoxDecoration(
                            color: Color(0xff3868dd),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            )),
                        //card inner detailes
                        child: Column(
                          //column for vertical alignment of the container
                          children: <Widget>[
                            //row for the horizontal alignment of the container
                            Row(
                              children: <Widget>[
                                // icon with text light background container
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Color(0xfffffefe),
                                  ),

                                  // container with image file, text and their properties
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        // Container used for giving circular paddin for logo.
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff403b34)),
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/iconpng/illustrator.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),

                                      // gap between icon and text
                                      const SizedBox(
                                        width: 5,
                                      ),

                                      // text
                                      SizedBox(
                                        child: Text("Illustrator Community",
                                            style: GoogleFonts.nunito(
                                              color: Colors.black,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: Text("3D Design bootcamp",
                                              style: GoogleFonts.nunito(
                                                  height: 1,
                                                  color: Colors.white,
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                              "Unveiling the Future of the digital dimension!",
                                              style: GoogleFonts.nunito(
                                                  height: 1,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 15), // gap between cards

                    // card 2
                    Container(
                      alignment: Alignment.centerRight,
                      // padding: const EdgeInsets.all(15),
                      width: 330,
                      decoration: const BoxDecoration(
                          color: Color(0xff53d373),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          )),
                      child: const Image(
                        height: 200,
                        width: 200,
                        image: AssetImage("assets/iconpng/house.png"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ), //gap between sections
              Container(
                padding: const EdgeInsets.fromLTRB(16.1, 0, 16.1, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        "Your Groups",
                        style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15), //gap between sections

              // oval horizontal container
              SizedBox(
                height: 100, // height of the list view
                child: ListView(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.1, 0, 16.1, 0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xfffffefe),
                      ),
                      child: Row(children: <Widget>[
                        Container(
                          // Container used for giving circular padding for logo.
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff0000000)),
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: const Image(
                              image: AssetImage("assets/iconpng/figma.png"),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(children: <Widget>[
                                Text(
                                  "San Francisco Figma",
                                  style: GoogleFonts.nunito(
                                    color: const Color(0xff5b5b5b),
                                  ),
                                ),
                              ]),
                              Row(children: <Widget>[
                                Text(
                                  "Designer Community",
                                  style: GoogleFonts.nunito(
                                    color: const Color(0xff5b5b5b),
                                  ),
                                ),
                              ]),
                            ]),
                      ]),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xfffffefe),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            // Container used for giving circular padding for logo.
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff403b34)),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: const Image(
                                image: AssetImage(
                                    "assets/iconpng/illustrator.png"),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(children: [
                                Text(
                                  "Illustrator Community",
                                  style: GoogleFonts.nunito(
                                    color: const Color(0xff5b5b5b),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // footer section
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 16.1, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0), // Top-left corner
                      topRight: Radius.circular(50.0), // Top-right corner
                    ),
                    color: Colors.white,
                  ),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 13, 0),
                          width: 130,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3868dd),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // icon 1
                                SizedBox(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.home,
                                      color: Colors.white,
                                      size: 27,
                                    ),
                                    onPressed: () {
                                      // Handle notification button press
                                    },
                                  ),
                                ),
                                // icon 2
                                SizedBox(
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      color: const Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        // icon 3
                        SizedBox(
                          child: IconButton(
                            icon: const Icon(
                              Icons.gps_not_fixed_outlined,
                              color: Colors.black,
                              size: 27,
                            ),
                            onPressed: () {
                              // Handle notification button press
                            },
                          ),
                        ),
                        // icon 4
                        SizedBox(
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_basket_outlined,
                              color: Colors.black,
                              size: 27,
                            ),
                            onPressed: () {
                              // Handle notification button press
                            },
                          ),
                        ),
                        // icon 5
                        SizedBox(
                          child: IconButton(
                            icon: const Icon(
                              Icons.cloud_circle_outlined,
                              color: Colors.black,
                              size: 27,
                            ),
                            onPressed: () {
                              // Handle notification button press
                            },
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
