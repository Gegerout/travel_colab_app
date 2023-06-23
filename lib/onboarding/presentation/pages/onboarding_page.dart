import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travell_colab_app/auth/presentation/pages/login_page.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/onb_bg.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                width: double.infinity,
                height: 505,
                decoration: BoxDecoration(
                    color: const Color(0xFF1C95BE).withOpacity(0.5)),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              Text("What we can provide",
                  style: GoogleFonts.encodeSansExpanded(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: const Color(0xFF050505),
                      shadows: [
                        const Shadow(
                            offset: Offset(-1.5, -1.5),
                            color: Color(0xFFFF9AFE)),
                        const Shadow(
                            offset: Offset(1.5, -1.5),
                            color: Color(0xFFFF9AFE)),
                        const Shadow(
                            offset: Offset(1.5, 1.5), color: Color(0xFFFF9AFE)),
                        const Shadow(
                            offset: Offset(-1.5, 1.5),
                            color: Color(0xFFFF9AFE)),
                      ])),
              const SizedBox(height: 50),
              CarouselSlider(
                  items: List.generate(3, (index) {
                    return Container(
                      width: 251,
                      height: 392,
                      decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(56)),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            "One stop\ntravel\ncreation",
                            style: GoogleFonts.encodeSansExpanded(
                                fontWeight: FontWeight.w900, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          Image.asset(
                            "assets/images/onb_image.png",
                            width: 132,
                            height: 109,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 26, right: 36),
                            child: Text(
                              "Itinerary ninja helps you simplify your travel to an all in one solution",
                              style: GoogleFonts.encodeSans(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 8),
                          DotsIndicator(
                            dotsCount: 3,
                            position: index,
                            decorator: const DotsDecorator(
                                activeColor: Color(0xFF1C95BE),
                                color: Color(0xFF010101),
                                activeSize: Size(14, 14),
                                size: Size(14, 14)),
                          )
                        ],
                      ),
                    );
                  }),
                  options: CarouselOptions(height: 392, viewportFraction: 0.7)),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1C95BE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Text("Skip",
                          style: GoogleFonts.encodeSansExpanded(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: Colors.white))),
                ),
              ),
              const SizedBox(height: 40),
            ],
          )
        ],
      ),
    );
  }
}
