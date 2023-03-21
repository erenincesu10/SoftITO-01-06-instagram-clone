import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AppInit extends StatelessWidget {
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      splash: FlutterLogo(
        size: 200,
      ),
      duration: 2000,
      screenFunction: () async {
        return MyHomePage();
      },
      curve: Curves.bounceInOut,
      splashIconSize: 300,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
