import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      home: const ScreenOne(),
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
                              width: 10), //gap between icon and profile

                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 11, 207, 221),
                              child: Image(
                                image: AssetImage(
                                  "assets/iconpng/profile.png",
                                ),
                                height: 45,
                                width: 45,
                              ),
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
                              color: const Color(0xff1152f3),
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
                      width: 330,
                      decoration: const BoxDecoration(
                        color: Color(0xff3a73f5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Stack(children: <Widget>[
                        ////////////////////// image in card
                        Positioned(
                          right: -85,
                          top: 30,
                          child: Container(
                            child: Image(
                              alignment: Alignment.centerRight,
                              image: AssetImage("assets/iconpng/house.png"),
                              height: 240,
                              width: 240,
                            ),
                          ),
                        ),
                        ////////////////////// detailes in card
                        Container(
                          padding: EdgeInsets.fromLTRB(16.1, 16.1, 0, 16.1),
                          child: Column(children: <Widget>[
                            Row(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    height: 28,
                                    width: 28,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff0000000),
                                      child: Image(
                                        image: AssetImage(
                                          "assets/iconpng/illustrator.png",
                                        ),
                                        height: 18,
                                        width: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5), // gap between contents
                                  Text("Illustrator Community",
                                      style:
                                          GoogleFonts.nunito(letterSpacing: 0))
                                ]),
                              ),
                            ]),

                            SizedBox(height: 30), //gap between content

                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 230,
                                  child: Text(
                                    "3D Design bootcamp",
                                    style: GoogleFonts.nunito(
                                        letterSpacing: 1,
                                        height: 1,
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 15), //gap between content

                            Row(children: <Widget>[
                              SizedBox(
                                width: 200,
                                child: Text(
                                    "Unveiling the Future of the digital dimension!",
                                    style: GoogleFonts.nunito(
                                        height: 1,
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ]),
                            SizedBox(height: 30), //gap between content

                            Row(children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Color(0xffffffff),
                                size: 18,
                              ),
                              SizedBox(width: 5), //gap between content

                              Text("San Francisco",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                  )),
                            ]),

                            SizedBox(height: 15), //gap between content

                            Row(children: [
                              Icon(
                                Icons.timer,
                                color: Color(0xffffffff),
                                size: 18,
                              ),
                              SizedBox(width: 5), //gap between content

                              Text("28 June 2023 7:30 AM GMT +7",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                  )),
                            ]),
                          ]),
                        ),
                      ]),
                    ),

                    const SizedBox(
                        width:
                            15), // gap between cards/////////////////////////

                    // card 2
                    Container(
                      width: 330,
                      decoration: const BoxDecoration(
                        color: Color(0xff53d373),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Stack(children: <Widget>[
                        ////////////////////// image in card
                        Positioned(
                          right: -85,
                          top: 30,
                          child: Container(
                            child: Image(
                              alignment: Alignment.centerRight,
                              image: AssetImage("assets/iconpng/house2.png"),
                              height: 240,
                              width: 240,
                            ),
                          ),
                        ),
                        ////////////////////// detailes in card
                        Container(
                          padding: EdgeInsets.fromLTRB(16.1, 16.1, 0, 16.1),
                          child: Column(children: <Widget>[
                            Row(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    height: 28,
                                    width: 28,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff0000000),
                                      child: Image(
                                        image: AssetImage(
                                          "assets/iconpng/figma.png",
                                        ),
                                        height: 18,
                                        width: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5), // gap between contents
                                  Text("Figma Community",
                                      style:
                                          GoogleFonts.nunito(letterSpacing: 0))
                                ]),
                              ),
                            ]),

                            SizedBox(height: 30), //gap between content

                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 230,
                                  child: Text(
                                    "UI Design bootcamp",
                                    style: GoogleFonts.nunito(
                                        letterSpacing: 1,
                                        height: 1,
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 15), //gap between content

                            Row(children: <Widget>[
                              SizedBox(
                                width: 200,
                                child: Text(
                                    "Unveiling the Future of the digital dimension!",
                                    style: GoogleFonts.nunito(
                                        height: 1,
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ]),
                            SizedBox(height: 30), //gap between content

                            Row(children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Color(0xffffffff),
                                size: 18,
                              ),
                              SizedBox(width: 5), //gap between content

                              Text("San Francisco",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                  )),
                            ]),

                            SizedBox(height: 15), //gap between content

                            Row(children: [
                              Icon(
                                Icons.timer,
                                color: Color(0xffffffff),
                                size: 18,
                              ),
                              SizedBox(width: 5), //gap between content

                              Text("28 June 2023 7:30 AM GMT +7",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                  )),
                            ]),
                          ]),
                        ),
                      ]),
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

              //ovel shaped list view.
              SizedBox(
                height: 80, // height of the list view
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
                            color: Color(0xff1152f3),
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
