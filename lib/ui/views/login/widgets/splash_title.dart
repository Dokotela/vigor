import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget(this.country);

  final String country;

  @override
  Widget build(Object context) {
    switch (country) {
      case 'BW':
        return Text('Mpepu',
            textAlign: TextAlign.center,
            style: GoogleFonts.archivoBlack(
                textStyle: TextStyle(color: Colors.blue[600], fontSize: 40)));
      case 'DO':
        return Text('Salud\nDominicana',
            textAlign: TextAlign.center,
            style: GoogleFonts.courgette(
                textStyle: const TextStyle(color: Colors.red, fontSize: 40)));
      case 'US':
        return Text('Vigor',
            textAlign: TextAlign.center,
            style: GoogleFonts.alegreyaSansSc(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blue[600],
                    fontSize: 50,
                    fontStyle: FontStyle.italic)));
      default:
        return Text('Vigor',
            textAlign: TextAlign.center,
            style: GoogleFonts.alegreyaSansSc(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blue[600],
                    fontSize: 50,
                    fontStyle: FontStyle.italic)));
    }
  }
}
