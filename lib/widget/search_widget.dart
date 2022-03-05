import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class SearchWidget extends StatefulWidget {
  final Function(String) onSearchChange;
  final String? hintText;
  final Color color;
  final Color colorIcon;
  final Color borderColor;
  final EdgeInsets padding;
  final BorderRadiusGeometry radiusBorder;
  final double fontSize;
  const SearchWidget({Key? key,
    required this.onSearchChange,
    this.color = Colors.transparent,
    this.colorIcon = grayPrimary,
    this.hintText,
    this.borderColor = grayPrimary,
    this.padding = const EdgeInsets.all(1.0),
    this.radiusBorder = const BorderRadius.all(Radius.circular(10.0)),
    this.fontSize = 12.0
  }) : super(key: key);
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      padding: widget.padding,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: white,
            border: Border.all(
              color: widget.borderColor,
            ),
            borderRadius: widget.radiusBorder
        ),
        child: Container(
          child: Row(
            children: <Widget>[
              Image(
                width: 16,
                height: 16,
                image: AssetImage(getSourceByNameImage('ic_search')),
              ),
              SizedBox(width: 11.0,),
              Flexible(
                child: TextField(
                  style: TextStyle(fontSize: widget.fontSize, color: blackPrimary),
                  decoration: new InputDecoration.collapsed(
                    hintText: widget.hintText != null ? widget.hintText : S.of(context).search_hint_text,
                    hintStyle: TextStyle(fontSize: widget.fontSize, color: grayPrimary),
                  ),
                  onChanged: (value) {
                    widget.onSearchChange(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
