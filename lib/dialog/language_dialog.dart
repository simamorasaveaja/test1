import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setoko/app/store/main_store.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';


class LanguageDialog extends StatefulWidget {

  final VoidCallback onDismish;

  const LanguageDialog({Key? key, required this.onDismish}) : super(key: key);

  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  MainStore? _mainStore;
  int? currentTypeLanguage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 36),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(S.of(context).select_app_language, style: TextStyle(color: black, fontSize: 17, fontWeight: FontWeight.bold),),
          SizedBox(height: 30.0,),
          InkWell(
            onTap: () {
              setState(() {
                currentTypeLanguage = 1;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(getSourceByNameImage('ic_language_id')),
                  width: 38,
                  height: 30,
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text('Bahasa Indonesia', style: TextStyle(color: black, fontSize: 17, fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 3.0,),
                Image(
                  image: AssetImage(getSourceByNameImage(currentTypeLanguage == 1 ? 'ic_radio_btn_active' : 'ic_radio_btn_inactive')),
                  width: 28,
                  height: 28,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          InkWell(
            onTap: () {
              setState(() {
                currentTypeLanguage = 0;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(getSourceByNameImage('ic_language_eng')),
                  width: 38,
                  height: 30,
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text('English', style: TextStyle(color: black, fontSize: 17, fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 3.0,),
                Image(
                  image: AssetImage(getSourceByNameImage(currentTypeLanguage == 0 ? 'ic_radio_btn_active' : 'ic_radio_btn_inactive')),
                  width: 28,
                  height: 28,
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
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
              _mainStore!.setAppLanguage(currentTypeLanguage!);
              widget.onDismish();
            },
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _mainStore ??= Provider.of<MainStore>(context);
    setState(() {
      currentTypeLanguage = _mainStore!.typeLanguage;
    });
  }
}

