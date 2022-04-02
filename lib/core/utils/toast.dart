import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toast(BuildContext context, String message) {
  FocusScope.of(context).requestFocus(FocusNode());
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.blueGrey[200]!.withOpacity(0.8),
      textColor: Colors.black87,
      fontSize: 16.0);
}
