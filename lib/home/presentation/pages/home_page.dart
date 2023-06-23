import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travell_colab_app/home/presentation/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List list = [
    "assets/images/list_1.png",
    "assets/images/list_2.png",
    "assets/images/list_3.png",
    "assets/images/list_4.png",
  ];

  List data = [
    ["assets/images/bag_icon.png", "Transport", "Free W-1\ncancellation"],
    [
      "assets/images/shop_icon.png",
      "Accommodation",
      "Special in-app offers\navailable"
    ],
    [
      "assets/images/fork_icon.png",
      "Food",
      "The Beauchamp",
      "24-27 BEDFORD PLACE",
    ],
    [
      "assets/images/tree_icon.png",
      "Parks",
      "South Banks",
      "Park Plaza London ",
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: 75,
                width: 328,
                child: Material(
                  color: const Color(0xFFEBEFFA),
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Text("Welcome Gina!",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900, fontSize: 20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 19),
                        child: Image.asset(
                          "assets/images/profile_image.png",
                          width: 45,
                          height: 45,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: customTextField("Search country, city"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 35),
                child: SizedBox(
                  height: 135,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Stack(
                          children: [
                            Image.asset(
                              list[index],
                              width: 196,
                              height: 134,
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: index == 1 ? 10 : 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Image.asset(data[index][0]),
                                  ),
                                  SizedBox(
                                    width: index == 1 ? 8 : 0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index][1],
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Colors.white)),
                                        Text(data[index][2],
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 230,
                height: 44,
                child: Material(
                  color: const Color(0xFFEBEFFA),
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Center(
                        child: Text("Popular destinations",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700, fontSize: 16))),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: SizedBox(
                  height: 247,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Stack(
                          children: [
                            Image.asset(
                              list[index + 2],
                              width: 207,
                              height: 247,
                              fit: BoxFit.fill,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 7, left: 130),
                                  child: Container(
                                    width: 64,
                                    height: 29,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white.withOpacity(0.2)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          data[index + 2][0],
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.fill,
                                        ),
                                        Text(data[index + 2][1],
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                                  child: Container(
                                    width: 189,
                                    height: 104,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(colors: [
                                          Colors.white,
                                          Colors.white.withOpacity(0.4)
                                        ])),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 11, top: 14),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(data[index + 2][2],
                                              style: GoogleFonts.lato(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16)),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: const Color(0xFF111417)
                                                    .withOpacity(0.2),
                                              ),
                                              Text(data[index + 2][3],
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12,
                                                      color: const Color(
                                                          0xFF111417))),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text("4.9",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12)),
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xFFF4E44F),
                                              ),
                                              const SizedBox(width: 65,),
                                              SizedBox(
                                                width: 59,
                                                height: 29,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                        elevation: 0,
                                                        backgroundColor:
                                                            Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8))),
                                                    child: Text("Detail",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xFF45BFE4)))),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
