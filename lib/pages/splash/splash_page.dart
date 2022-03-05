import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/pages/splash/component/splash_widget.dart';
import 'package:setoko/utils/local_preference.dart';

class SplashPage extends StatefulWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (context, _) {
        return SplashWidget();
      },
    );

  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this)
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          if (LocalPreference.isLogin()) {
            Navigator.pushReplacementNamed(context, Routes.main);
          } else if (LocalPreference.isOnBoardingOpen()) {
            Navigator.pushReplacementNamed(context, Routes.main);
          } else {
            Navigator.pushReplacementNamed(context, Routes.onBoarding);
          }
        }
      });
  }
}
