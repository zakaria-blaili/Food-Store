
// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
dynamic Roboto(double size,Color color){

  return GoogleFonts.roboto( fontSize: size,color: color,letterSpacing: 2,shadows: [
    Shadow(
      color: Colors.grey.withOpacity(0.53),
      offset:Offset(0, 2) ,
      )
    ]);
}
dynamic RobotoMono(double size,Color color){

  return GoogleFonts.robotoMono( fontSize: size,color: color,letterSpacing: 1);
}

dynamic Macondo(double size,Color color){

  return GoogleFonts.macondoSwashCaps( fontSize: size,color: color,letterSpacing: 1);
}

dynamic Quicksand(double size,Color color){

  return GoogleFonts.quicksand( fontSize: size,color: color,letterSpacing: 1,fontWeight: FontWeight.w600);

}
dynamic Quicksand2(double size,Color color){

  return GoogleFonts.quicksand( fontSize: size,color: color,letterSpacing: 1,fontWeight: FontWeight.w200);

}