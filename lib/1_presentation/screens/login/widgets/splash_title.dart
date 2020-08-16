import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget(this.country);

  final String country;

  String _loginTitle(String country) {
    switch (country) {
      case 'botswana':
        return 'Mpepu';
      case 'dominican_republic':
        return 'Salud\nDominicana';
      case 'usa':
        return 'Vigor';
      default:
        return null;
    }
  }

  TextStyle _loginStyle(String country) {
    switch (country) {
      case 'botswana':
        return GoogleFonts.archivoBlack(
            textStyle: TextStyle(color: Colors.blue[600], fontSize: 40));
      case 'dominican_republic':
        return GoogleFonts.courgette(
            textStyle: const TextStyle(color: Colors.red, fontSize: 40));
      case 'usa':
        return GoogleFonts.alegreyaSansSc(
            textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.blue[600],
                fontSize: 50,
                fontStyle: FontStyle.italic));
      default:
        return null;
    }
  }

  @override
  Widget build(Object context) {
    return Text(
      _loginTitle(country),
      textAlign: TextAlign.center,
      style: _loginStyle(country),
    );
  }
}
