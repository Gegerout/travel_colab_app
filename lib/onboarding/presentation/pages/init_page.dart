import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travell_colab_app/onboarding/presentation/pages/onboarding_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  late final Timer timer;
  int _index = 0;

  var images = [
    "assets/images/init_0.png",
    "assets/images/init_1.png",
    "assets/images/init_2.png",
    "assets/images/init_3.png",
    "assets/images/init_4.png",
    "assets/images/init_5.png",
    "assets/images/init_6.png",
    "assets/images/init_7.png"
  ];

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if(_index == 7) {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => OnboardingPage()), (route) => false);
      }
      else {
        setState(() => _index++);
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 1500),
        child: Image.asset(images[_index % images.length], width: double.infinity, fit: BoxFit.cover, key: UniqueKey(),),
      ),
    );
  }
}
