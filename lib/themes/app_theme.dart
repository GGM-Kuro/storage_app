import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {

    static const Color primary = Colors.black;
    static const Color secondary = Colors.white;

    static  TextStyle appstyle(double size, Color color, FontWeight fw){
        return GoogleFonts.poppins( fontSize: size, color: color, fontWeight: fw );
    }
    static  TextStyle appstyleWithHt(double size, Color color, FontWeight fw,double ht){
        return GoogleFonts.poppins( fontSize: size, color: color, fontWeight: fw, height: ht);
    }

    static final ThemeData lightTheme = ThemeData.light().copyWith(

        primaryColor: Colors.black26,

        appBarTheme: const AppBarTheme(
        color: Colors.grey,
        elevation: 0,
            ),


            );
}
