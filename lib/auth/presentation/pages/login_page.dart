import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/login_bg.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: height,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Itinerary\nNinja",
                        style: GoogleFonts.karla(
                            fontWeight: FontWeight.w800,
                            fontSize: 64,
                            color: const Color(0xFF050505),
                            shadows: [
                              const Shadow(
                                  offset: Offset(-1.5, -1.5),
                                  color: Color(0xFFFF9AFE)),
                              const Shadow(
                                  offset: Offset(1.5, -1.5),
                                  color: Color(0xFFFF9AFE)),
                              const Shadow(
                                  offset: Offset(1.5, 1.5),
                                  color: Color(0xFFFF9AFE)),
                              const Shadow(
                                  offset: Offset(-1.5, 1.5),
                                  color: Color(0xFFFF9AFE)),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text("Login to access all features",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white)),
                    const SizedBox(height: 17),
                    Text("Login ID",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white)),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextFormField(
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: 16,
                            bottom: 38,
                          ),
                          isDense: true,
                          hintText: "Enter email, phone number or username",
                          hintStyle: GoogleFonts.lato(
                              fontWeight: FontWeight.w400, fontSize: 16),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFAFB5C8)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text("Password",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white)),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextFormField(
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: 16,
                            bottom: 38,
                          ),
                          isDense: true,
                          hintText: "Enter your password",
                          hintStyle: GoogleFonts.lato(
                              fontWeight: FontWeight.w400, fontSize: 16),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFAFB5C8)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 140, child: Divider()),
                        Text("or Login with",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white)),
                        //const Spacer(),
                        const SizedBox(width: 140, child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/apple_icon.png",
                          width: 33,
                          height: 35,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Image.asset(
                          "assets/images/google_icon.png",
                          width: 34,
                          height: 35,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                                fontStyle: FontStyle.italic)),
                        TextButton(
                          onPressed: () {},
                          child: Text("Sign Up",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(0xFF1088AE))),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1088AE),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text("Log in",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.white))),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Skip for Now",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: const Color(0xFF1088AE))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
