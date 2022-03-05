import 'package:flutter/material.dart';
import 'package:setoko/utils/fun_utils.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(getSourceByNameImage('ic_bg_setoko')),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Image(
          image: AssetImage(getSourceByNameImage('ic_logo_splash')),
        ),
      ),
    );
  }
}
