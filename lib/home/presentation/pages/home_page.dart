import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travell_colab_app/home/presentation/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12))
                ),
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
                      child: Image.asset("assets/images/profile_image.png", width: 45, height: 45, fit: BoxFit.fill,),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17),
              child: customTextField("Search country, city"),
            )
          ],
        ),
      ),
    );
  }
}
