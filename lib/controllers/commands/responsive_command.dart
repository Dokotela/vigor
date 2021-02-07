import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

// spec: https://github.com/delay/flutter_starter
class ResponsiveCommand extends GetxController {
  static ResponsiveCommand get to => Get.find();

  double get width => Get.width;
  double get height => Get.height;

  BorderRadius circularBorderRadius(SizingInformation sizingInformation) =>
      BorderRadius.circular(sizingInformation.deviceScreenType ==
              DeviceScreenType.mobile
          ? 20
          : sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? 30
              : sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? 30
                  : 30);

  EdgeInsets symmetricPadding(SizingInformation sizingInformation) =>
      EdgeInsets.symmetric(
          horizontal: sizingInformation.deviceScreenType ==
                  DeviceScreenType.mobile
              ? 20
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 40
                  : sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 30
                      : 30,
          vertical: sizingInformation.deviceScreenType ==
                  DeviceScreenType.mobile
              ? 20
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 40
                  : sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 30
                      : 30);
}
