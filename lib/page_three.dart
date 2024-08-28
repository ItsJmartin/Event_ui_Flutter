import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JoinGroup extends StatelessWidget {
  const JoinGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3971f5),
      body: SafeArea(
        child: Container(
          // padding: const EdgeInsets.only(top: 16.1),
          child: Column(children: <Widget>[
            // Section 1
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.fromLTRB(16.1, 16.1, 16.1, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Event Details",
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ), //height between sections

            // Section 2
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffeef0f6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(16.1, 16.1, 16.1, 0),
                    child: Row(children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: const SizedBox(
                          height: 35,
                          width: 35,
                          child: Image(
                            image: AssetImage("assets/iconpng/figma.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      // space between content in second section
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Main heading
                                SizedBox(
                                  child: Text(
                                    "San Francisco Figma Designer community",
                                    style: GoogleFonts.nunito(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                // gap between contents
                                SizedBox(
                                  height: 7,
                                ),
                                // Sub heading
                                Text(
                                  "122k Members Public group",
                                  style: GoogleFonts.nunito(
                                      color: Color(0xff8c8c8c)),
                                ),
                              ]),
                        ),
                      )
                    ]),
                  ),

                  SizedBox(height: 15), //gap between section
                  // Section 3
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.1),
                    padding: EdgeInsets.all(16.1),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Row(
                        children: <Widget>[
                          Text(
                            "About",
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              child: Text(
                                '''Embrace the opportunity to connect, learn and grow\nalogside fello figma designers in one of the most vibrant\ndesign hubs in the world. We can't wait to welcome you to...''',
                                style: GoogleFonts.nunito(
                                    fontSize: 12.3, color: Color(0xff8c8c8c)),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10), //gap between contents
                      Row(
                        children: <Widget>[
                          Text(
                            "More details",
                            style: GoogleFonts.nunito(
                              color: Color(0xff1152f3),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ]),
                  ),

                  SizedBox(height: 20),
                  // middle button section 4
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.1),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // first button
                          Container(
                            alignment: Alignment.center,
                            width: 185,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xff1152f3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (ctx) {
                                  return const JoinGroup();
                                }));
                              },
                              child: Text(
                                "Joined",
                                style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color: const Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          // second button
                          Container(
                            alignment: Alignment.center,
                            width: 185,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border: Border.all(
                                    color: Color(0xff1152f3), width: 1.2)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Color(0xff1152f3),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (ctx) {
                                        return const JoinGroup();
                                      }));
                                    },
                                    child: Text(
                                      "Invite",
                                      style: GoogleFonts.nunito(
                                          fontSize: 17,
                                          color: const Color(0xff1152f3),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                  // gap between section
                  SizedBox(height: 20),
                  // section 5
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Text(
                            "Upcoming events",
                            style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  //List View ///////////////////////////////
                  SizedBox(
                    height: 280,
                    child: ListView(
                        padding: EdgeInsets.only(left: 16.1, right: 16.1),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          // first card
                          // stack widget used for align the dual tone containers
                          Stack(children: [
                            // bottom container
                            Container(
                              padding: EdgeInsets.only(bottom: 16.1),
                              width: 360,
                              height: 260,
                              decoration: BoxDecoration(
                                color: Color(0XFFeeebf9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                boxShadow: [   // Shadow for the cards
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(
                                        0.5), // Shadow color with opacity
                                    spreadRadius:
                                        0, // Spread radius (0 for no spread)
                                    blurRadius: 7, // Blur radius for softness
                                    offset: Offset(0,
                                        3), // Horizontal: 0, Vertical: 3 (only bottom shadow)
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_sharp,
                                        color: Color(0xff3971f5),
                                        size: 18,
                                      ),
                                      SizedBox(width: 5), //gap between content

                                      Text("San Francisco",
                                          style: TextStyle(fontSize: 12)),

                                      SizedBox(width: 10), //gap between content
                                      Icon(
                                        Icons.timer,
                                        color: Color(0xff3971f5),
                                        size: 18,
                                      ),
                                      SizedBox(width: 5), //gap between content

                                      Text("28 June 2023 7:30 AM GMT +7",
                                          style: TextStyle(fontSize: 12)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // top container
                            Container(
                              width: 360,
                              height: 210,
                              padding: EdgeInsets.all(16.1),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff9373d9), // Start color
                                      Color(0xFF6535cb), // End color
                                    ],
                                    begin:
                                        Alignment.topCenter, //gadient direction
                                    end: Alignment
                                        .bottomCenter, //gradient direction
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  )),
                              child: Row(children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Prototype 101",
                                        style: GoogleFonts.nunito(
                                            fontSize: 28,
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Learn prototyping together in figma!",
                                        style: GoogleFonts.nunito(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                          height: 15), //gap between contents
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff000000),
                                              ),
                                              child: const Image(
                                                width: 20,
                                                height: 20,
                                                image: AssetImage(
                                                    "assets/iconpng/figma.png"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            const SizedBox(
                                                width:
                                                    10), // gap between contents
                                            Text(
                                              "SF Figma Community",
                                              style: GoogleFonts.nunito(
                                                color: Color(0XFFFFFFFF),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        "assets/iconpng/civil-engineering.png",
                                        width: 100,
                                        height: 100,
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ]),

                          SizedBox(width: 10), //gap between cards

                          // second card
                          // stack widget used for align the dual tone containers
                          Stack(children: [
                            // bottom container
                            Container(
                              padding: EdgeInsets.only(bottom: 16.1),
                              width: 360,
                              height: 260,
                              decoration: BoxDecoration(
                                color: Color(0XFFeeebf9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(
                                        0.5), // Shadow color with opacity
                                    spreadRadius:
                                        0, // Spread radius (0 for no spread)
                                    blurRadius: 7, // Blur radius for softness
                                    offset: Offset(0,
                                        3), // Horizontal: 0, Vertical: 3 (only bottom shadow)
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_sharp,
                                        color: Color(0xff3971f5),
                                        size: 18,
                                      ),
                                      SizedBox(width: 5), //gap between content

                                      Text("San Francisco",
                                          style: TextStyle(fontSize: 12)),

                                      SizedBox(width: 10), //gap between content
                                      Icon(
                                        Icons.timer,
                                        color: Color(0xff3971f5),
                                        size: 18,
                                      ),
                                      SizedBox(width: 5), //gap between content

                                      Text("28 June 2023 10:30 AM GMT +7",
                                          style: TextStyle(fontSize: 12)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // top container
                            Container(
                              width: 360,
                              height: 210,
                              padding: EdgeInsets.all(16.1),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff8cdea3), // Start color
                                      Color(0xff34ca5a), // End color
                                    ],
                                    begin:
                                        Alignment.topCenter, //gadient direction
                                    end: Alignment
                                        .bottomCenter, //gradient direction
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  )),
                              child: Row(children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Prototype 102",
                                        style: GoogleFonts.nunito(
                                            fontSize: 28,
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Learn prototyping together in Illustr!",
                                        style: GoogleFonts.nunito(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                          height: 15), //gap between contents
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff403b34),
                                              ),
                                              child: const Image(
                                                width: 20,
                                                height: 20,
                                                image: AssetImage(
                                                    "assets/iconpng/illustrator.png"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            const SizedBox(
                                                width:
                                                    10), // gap between contents
                                            Text(
                                              "Illustrator Community",
                                              style: GoogleFonts.nunito(
                                                color: Color(0XFFFFFFFF),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        "assets/iconpng/artitect-design.png",
                                        width: 100,
                                        height: 100,
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ])
                        ]),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
