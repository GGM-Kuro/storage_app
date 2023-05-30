import 'package:flutter/material.dart';

class Apptheme {

    static const Color primary = Colors.black;

    static final ThemeData lightTheme = ThemeData.light().copyWith(

        primaryColor: Colors.black26,

        appBarTheme: const AppBarTheme(
        color: Colors.grey,
        elevation: 0,
            ),


            );
}
