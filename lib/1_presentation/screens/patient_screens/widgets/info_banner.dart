import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class InfoBannerWidget extends StatelessWidget {
  const InfoBannerWidget({
    @required this.lastCommaFirstName,
    @required this.id,
    @required this.birthDate,
    @required this.relativeAge,
    @required this.sex,
  });

  final String lastCommaFirstName;
  final String id;
  final String birthDate;
  final String relativeAge;
  final String sex;
  static const localTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _spacerV(),
        Row(children: [
          _flexTwo('${"Name".tr}:  ', lastCommaFirstName),
          _flexOne(relativeAge)
        ]),
        _spacerV(),
        Row(children: [
          _flexTwo('${"Birthdate".tr}:  ', birthDate),
          _flexOne(sex)
        ]),
        _spacerV(),
        _buildBottomRow(),
        _spacerV(),
      ],
    );
  }

  Widget _buildBottomRow() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: Get.width * 2 / 3,
        child: _flexTwo('ID:  ', id),
      ),
    );
  }

  // Two widgets within a row, left is not flexible
  Widget _flexTwo(String text1, String text2) {
    return Flexible(
      flex: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text1,
            style: localTextStyle,
            textAlign: TextAlign.left,
          ),
          _sharedText(text2, textAlign: TextAlign.right)
        ],
      ),
    );
  }

  // One flexible widget within a row
  // Row is necessary, otherwise Expanded throws an error
  // https://stackoverflow.com/questions/54905388/incorrect-use-of-parent-data-widget-expanded-widgets-must-be-placed-inside-flex
  Widget _flexOne(String text3) {
    return Flexible(
        flex: 2,
        child: Row(
          children: [
            _sharedText(text3, textAlign: TextAlign.right),
          ],
        ));
  }

  // Text will automatically adjust to the available size
  Widget _sharedText(String text, {TextAlign textAlign}) => Expanded(
          child: AutoSizeText(
        text,
        maxLines: 1,
        style: localTextStyle,
        textAlign: textAlign,
      ));

  Widget _spacerV() => const SizedBox(height: 8.0);
}
