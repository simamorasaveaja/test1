import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/utils/local_preference.dart';

class LogoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LocalPreference.logout();
        Navigator.of(context).pushNamedAndRemoveUntil(Routes.splash, (Route<dynamic> route) => false);
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/ic_logout.png'),
            ),
            SizedBox(width: 10.0,),
            Text('Log Out', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17),),
            Spacer(),
            Container(
              width: 30,
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(getSourceByNameImage('ic_next_oval')),
              ),
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
