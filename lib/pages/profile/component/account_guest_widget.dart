import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class AccountGuestWidget extends StatefulWidget {
  @override
  _AccountGuestWidgetState createState() => _AccountGuestWidgetState();
}

class _AccountGuestWidgetState extends State<AccountGuestWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1,
          color: grayLighter,
        ),
        Container(
          padding: const EdgeInsets.only(left: 21, right: 21, top: 18, bottom: 16),
          width: double.infinity,
          color: white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 54.0,
                height: 54.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(getSourceByNameImage('ic_avatar_default'))
                    )
                )
              ),
              Spacer(),
              InkWell(
                child: Container(
                  height: 40,
                  width: 118,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      border: Border.all(
                        color: orangeMedium,
                        width: 1,
                      )),
                  alignment: Alignment.center,
                  child: Text(S.of(context).login, style: TextStyle(color: orangeMedium, fontSize: 14, fontWeight: FontWeight.bold),),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.login);
                },
              ),
              SizedBox(width: 16.0,),
              InkWell(
                child: Container(
                  height: 40,
                  width: 118,
                  decoration: BoxDecoration(
                      color: orangeMedium,
                      borderRadius: const BorderRadius.all(Radius.circular(24.0))
                  ),
                  alignment: Alignment.center,
                  child: Text(S.of(context).register, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.register);
                },
              ),
            ],
          ),
        ),
        Container(
          height: 14,
          color: grayLighter,
        ),
      ],
    );
  }
}
