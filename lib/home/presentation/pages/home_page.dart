import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travell_colab_app/home/presentation/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List list = [
    "assets/images/list_1.png",
    "assets/images/list_2.png",
  ];

  List data = [
    ["assets/images/bag_icon.png", "Transport", "Free W-1\ncancellation"],
    [
      "assets/images/shop_icon.png",
      "Accommodation",
      "Special in-app offers\navailable"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                            padding: EdgeInsets.only(left: index == 1 ? 10 : 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Image.asset(data[index][0]),
                                ),
                                SizedBox(width: index == 1 ? 8 : 0,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
            )
          ],
        ),
      ),
    );
  }
}
