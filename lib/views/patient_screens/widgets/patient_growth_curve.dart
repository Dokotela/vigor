import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';

class PatientGrowthCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // using expanded for now so that the remaining space will be taken by the SVG
        // todo: figure out how to constrain this child, so that zooming does not overcrowd the bottom row
        Expanded(child: _buildSVG()),
        _buildBottomRow(),
      ],
    );
  }

  Widget _buildSVG() {
    return PhotoView.customChild(
      // tightMode: true,
      backgroundDecoration: const BoxDecoration(color: Colors.white),
      child: SvgPicture.asset('assets/svg/growth_curve_male.svg'),
    );
  }

  Widget _buildBottomRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _selectedButton('Show\nTable', () {}),
          _selectedButton('Edit\nData', () {}),
          _selectedButton('Add\nData', () {}),
        ],
      ),
    );
  }

  Widget _selectedButton(String title, Function onPressed) {
    return RaisedButton(
      shape: CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
