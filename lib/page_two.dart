import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page_three.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3971f5),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 16.1),
          child: Column(children: <Widget>[
            // header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
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
            // Section 2
            Container(
              child: Stack(children: <Widget>[
                ////////////////////// image in card
                Positioned(
                  right: -35,
                  top: 0,
                  child: Container(
                    child: Image(
                      alignment: Alignment.centerRight,
                      image: AssetImage("assets/iconpng/house.png"),
                      height: 190,
                      width: 200,
                    ),
                  ),
                ),
                ////////////////////// detailes in card
                Container(
                  padding: EdgeInsets.fromLTRB(16.1, 16.1, 0, 16.1),
                  child: Column(children: <Widget>[
                    SizedBox(height: 10), //gap between content

                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 250,
                          child: Text(
                            "3D Design bootcamp",
                            style: GoogleFonts.nunito(
                                letterSpacing: 1,
                                height: 1,
                                color: Colors.white,
                                fontSize: 46,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 15), //gap between content

                    Row(children: <Widget>[
                      SizedBox(
                        width: 250,
                        child: Text(
                            "Unveiling the Future of the digital dimension!",
                            style: GoogleFonts.nunito(
                                height: 1,
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600)),
                      ),
                    ]),
                    SizedBox(height: 10), //gap between content

                    Row(
                      children: const <Widget>[
                        SizedBox(
                          width: 250,
                          child:
                              Divider(thickness: 1, color: Color(0xffe2e2e4)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.1),
                            child: Text(
                              '''Do you know that a new era of the digital dimension is upon us? Don't miss the opportunity to gain insight into the cutting-edge technology that will revolutionize the way we interact with the world around us.''',
                              style: GoogleFonts.nunito(
                                color: const Color(0xffe2e2e4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ]),
            ),

            const SizedBox(height: 10),
            // second portion
            Expanded(
              child: Container(
                // padding: const EdgeInsets.fromLTRB(16.1, 0, 16.1, 0),
                decoration: const BoxDecoration(
                  color: Color(0xffeaeef6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0), // white Top-left corner
                    topRight: Radius.circular(30.0), // white Top-right corner
                  ),
                ),
                child: Column(children: <Widget>[
                  const SizedBox(height: 15),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffbdbfc4),
                          borderRadius: BorderRadius.circular(50)),
                      width: 50,
                      height: 5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.1),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff403b34),
                          ),
                          child: const Image(
                            width: 30,
                            height: 30,
                            image: AssetImage("assets/iconpng/illustrator.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 10), // gap between contents
                        Text(
                          "Illustrator Community",
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // gap between contents
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.1),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.location_on_sharp,
                                color: Color(0xff9d9c9c),
                                size: 24,
                              ),
                              const SizedBox(width: 10), // gap between contents
                              Text(
                                "San Francisco",
                                style: GoogleFonts.nunito(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10), // gap between contents
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.timer,
                                color: Color(0xff9d9c9c),
                                size: 24,
                              ),
                              const SizedBox(width: 10), // gap between contents
                              Text(
                                "28 June 2023 7:30 AM GMT +7",
                                style: GoogleFonts.nunito(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // gap between contents
                  // align 2 text in a row
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.1),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "122 People are going",
                                              style: GoogleFonts.nunito(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "36 Mutuals",
                                              style: GoogleFonts.nunito(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff8c8c8c),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                ]),
                            const SizedBox(height: 10), // gap between contents
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              height:
                                  50, // Height to contain overlapping circles
                              child: Stack(children: <Widget>[
                                ////////////////////////////////////////////////////
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffdfd6fa),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person7.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 40, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffd8d8d9),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person8.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 80, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffc4ebfc),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person6.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 120, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xfffcccd9),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person9.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 160, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffdad1f8),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person4.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 200, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffded4fa),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person3.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 240, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffded4fa),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person2.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280, // Adjust this value for overlap
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: Color(0xffd9d9da),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/iconpng/person1.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                    ),
                  ),

                  const SizedBox(height: 15), // gap between contents
                  ////////////////////////////////footer/////////////////////
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(40.0), // white Top-left corner
                          topRight:
                              Radius.circular(40.0), // white Top-right corner
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .start, //for alignment of prize
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // two widgets
                                  Row(children: <Widget>[
                                    Text(
                                      "Price",
                                      style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff8c8c8c),
                                      ),
                                    ),
                                  ]),
                                  Row(children: <Widget>[
                                    Text(
                                      "Free",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ]),
                                ]),

                            // Attend buttob//////////////////////////////
                            Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .start, //for alignment of button
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 190,
                                    height: 69,
                                    decoration: BoxDecoration(
                                      color: Color(0xff1152f3),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // icon 1
                                          Container(
                                            alignment: Alignment.center,
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (ctx) {
                                                  return const JoinGroup();
                                                }));
                                              },
                                              child: Text(
                                                "Attend",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 15,
                                                  color:
                                                      const Color(0xffFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ]),
                          ]),
                    ),
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
