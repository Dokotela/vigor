import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../localization.dart';

class InfoBannerWidget extends StatelessWidget {
  const InfoBannerWidget({
    @required this.id,
    @required this.birthDate,
    @required this.relativeAge,
    @required this.sex,
  });

  final String id;
  final String birthDate;
  final String relativeAge;
  final String sex;

  @override
  Widget build(Object context) {
    final labels = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _spacerV(),
        Row(children: [
          _flexTwo(
              '${labels.general.birthDate}: $birthDate', 'Age: $relativeAge')
        ]),
        _spacerV(),
        Row(children: [_flexOne('${labels.general.sexAtBirth.title}: $sex')]),
        _spacerV(),
        Row(children: [_flexOne('ID: $id')]),
        _spacerV(),
        _spacerV(),
      ],
    );
  }

  Widget _flexOne(String text3) {
    return Flexible(
        flex: 2,
        child: Row(
          children: [
            _sharedText(text3, textAlign: TextAlign.left),
          ],
        ));
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
            style: Get.textTheme.headline6,
            textAlign: TextAlign.left,
          ),
          _sharedText(text2, textAlign: TextAlign.right)
        ],
      ),
    );
  }

  // Text will automatically adjust to the available size
  Widget _sharedText(String text, {TextAlign textAlign}) => Expanded(
          child: AutoSizeText(
        text,
        maxLines: 1,
        style: Get.textTheme.headline6,
        textAlign: textAlign,
      ));

  Widget _spacerV() => const SizedBox(height: 8.0);
}
