import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget(this.country);

  final String country;

  @override
  Widget build(Object context) => Text('Salud Dominicana',
      textAlign: TextAlign.center,
      style: GoogleFonts.courgette(
          textStyle: const TextStyle(color: Colors.red, fontSize: 40)));
  // default:
  //   return Text('Vigor',
  //       textAlign: TextAlign.center,
  //       style: GoogleFonts.alegreyaSansSc(
  //           textStyle: TextStyle(
  //               fontWeight: FontWeight.w900,
  //               color: Colors.blue[600],
  //               fontSize: 50,
  //               fontStyle: FontStyle.italic)));

}
