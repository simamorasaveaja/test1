import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String convertValueToCurrency(double value) {
  String result = '-';
  try {
    final currencyFormatter = NumberFormat('#,##0', 'ID');
    result = currencyFormatter.format(value);
  } catch (e) {

  }
  return 'Rp '+result;
}

String getSourceByNameImage(String nameImage, {String path = 'assets/images/', String ext = 'png'}) {
  return '$path$nameImage.$ext';
}

void dialogManager(BuildContext context, Widget widget) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0)), //this right here
          child: widget,
        );
      });
}