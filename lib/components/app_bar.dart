import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget appBarComponent(
    {Widget? content,
    Widget? leadingWidget,
    Color? backgroundColor,
    double height = kToolbarHeight}) {
  return AppBar(
      toolbarHeight: height,
      backgroundColor: backgroundColor,
      title: content,
      leading: leadingWidget,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ));
}
