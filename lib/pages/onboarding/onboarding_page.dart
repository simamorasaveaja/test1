import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/dialog/language_dialog.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/model/item_onboarding.dart';
import 'package:setoko/pages/onboarding/component/onboarding-widget.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/utils/local_preference.dart';

import 'component/indicator_widget.dart';

class OnBoardingPage extends StatefulWidget {


  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  ListItemOnBoarding _listItemOnBoarding = ListItemOnBoarding();
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int _currentPage = 0;
  int currentTypeLanguage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(getSourceByNameImage('ic_bg_onboarding')),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  if (index != _currentPage) {
                    setState(() {
                      _currentPage = index;
                    });
                  }
                },
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                controller: _pageController,
                itemCount: _listItemOnBoarding.items.length,
                itemBuilder: (context, index){
                  return OnBoardingWidget(itemOnBoarding: _listItemOnBoarding.items[index]);
                },
              ),
            ),
            Container(
              height: 200,
              child: Column(
                children: [
                  IndicatorWidget(currentPage: _currentPage, maxIndicator: _listItemOnBoarding.items.length,),
                  if (_currentPage < _listItemOnBoarding.items.length-1)
                    Container(
                      padding: const EdgeInsets.only(left: 19, right: 19,top: 20),
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              height: 50,
                              width: 80,
                              alignment: Alignment.center,
                              child: Text(S.of(context).skip, style: TextStyle(color: greenPrimary, fontSize: 14, fontWeight: FontWeight.bold),),
                            ),
                            onTap: () {
                              LocalPreference.setOnBoardingOpen(true);
                              Navigator.pushReplacementNamed(context, Routes.main);
                            },
                          ),
                          Spacer(),
                          InkWell(
                            child: Container(
                              height: 50,
                              width: 148,
                              decoration: BoxDecoration(
                                  color: orangeMedium,
                                  borderRadius: const BorderRadius.all(Radius.circular(24.0))
                              ),
                              alignment: Alignment.center,
                              child: Text(S.of(context).next, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                            ),
                            onTap: () {
                              if (_currentPage < _listItemOnBoarding.items.length-1) {
                                _pageController.animateToPage(
                                  _currentPage+1,
                                  duration: Duration(milliseconds: 350),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  if (_currentPage >= _listItemOnBoarding.items.length-1)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Container(
                                  height: 50,
                                  width: 148,
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
                                  LocalPreference.setOnBoardingOpen(true);
                                  Navigator.pushNamed(context, Routes.login);
                                },
                              ),
                              Spacer(),
                              InkWell(
                                child: Container(
                                  height: 50,
                                  width: 148,
                                  decoration: BoxDecoration(
                                      color: orangeMedium,
                                      borderRadius: const BorderRadius.all(Radius.circular(24.0))
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(S.of(context).register, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                                ),
                                onTap: () {
                                  LocalPreference.setOnBoardingOpen(true);
                                  Navigator.pushNamed(context, Routes.register);
                                },
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 80,
                            alignment: Alignment.center,
                            child: Text(S.of(context).skip_for_now, style: TextStyle(color: greenPrimary, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                          onTap: () {
                            LocalPreference.setOnBoardingOpen(true);
                            Navigator.pushReplacementNamed(context, Routes.main);
                          },
                        ),
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_){
      dialogManager(context,
          LanguageDialog(
            onDismish: () {
              Navigator.pop(context);
            },
          )
      );
    });
  }

}
