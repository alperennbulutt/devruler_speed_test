import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension WidgetExtension on Widget {
  //? TEST EXTENSIONS
  Widget get testBlack => Container(color: Colors.black, child: this);
  Widget get testRed => Container(color: Colors.red, child: this);
  Widget get testGreen => Container(color: Colors.green, child: this);
  Widget get testBlue => Container(color: Colors.blue, child: this);
  Widget get testYellow => Container(color: Colors.yellow, child: this);
  Widget get testOrange => Container(color: Colors.orange, child: this);
  Widget get testPurple => Container(color: Colors.purple, child: this);
  Widget get testPink => Container(color: Colors.pink, child: this);
  Widget get testTeal => Container(color: Colors.teal, child: this);
  Widget get testCyan => Container(color: Colors.cyan, child: this);
  Widget get testBrown => Container(color: Colors.brown, child: this);
  Widget get testGrey => Container(color: Colors.grey, child: this);
  Widget get testWhite => Container(color: Colors.white, child: this);

  //? POSITION EXTENSIONS
  Widget get center => Center(child: this);
  Widget get expand => Expanded(child: this);
  Widget expandIf(bool condition) => condition ? Expanded(child: this) : this;

  Widget expandedWithFlex(int flex) => Expanded(flex: flex, child: this);

  //? INK WELL EXTENSIONS

  Widget inkWell({Function()? onTap}) => InkWell(
        onTap: onTap,
        child: this,
      );

  Widget inkWellForRouter(Widget route) => InkWell(
        onTap: () => Get.to(() => route),
        child: this,
      );

  //? PADDING CONSTANTS
  double get nano => 1;
  double get micro => 2;
  double get tiny => 4;
  double get small => 8;
  double get normal => 16;
  double get medium => 24;
  double get large => 32;
  double get xLarge => 40;
  double get xxLarge => 48;
  double get xxxLarge => 56;
  double get giant => 64;

  //? PADDING EXTENSIONS
  Widget paddingAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );
  Widget paddingSymmetric({double vertical = 0, double horizontal = 0}) => Padding(
        padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
  Widget paddingOnly({double left = 0, double right = 0, double top = 0, double bottom = 0}) => Padding(
        padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );
  Widget get paddingAllNano => Padding(
        padding: EdgeInsets.all(nano),
        child: this,
      );
  Widget get paddingAllMicro => Padding(
        padding: EdgeInsets.all(micro),
        child: this,
      );
  Widget get paddingAllTiny => Padding(
        padding: EdgeInsets.all(tiny),
        child: this,
      );
  Widget get paddingAllSmall => Padding(
        padding: EdgeInsets.all(small),
        child: this,
      );
  Widget get paddingAllNormal => Padding(
        padding: EdgeInsets.all(normal),
        child: this,
      );
  Widget get paddingAllMedium => Padding(
        padding: EdgeInsets.all(medium),
        child: this,
      );
  Widget get paddingAllLarge => Padding(
        padding: EdgeInsets.all(large),
        child: this,
      );
  Widget get paddingAllXLarge => Padding(
        padding: EdgeInsets.all(xLarge),
        child: this,
      );
  Widget get paddingAllXxLarge => Padding(
        padding: EdgeInsets.all(xxLarge),
        child: this,
      );
  Widget get paddingAllXxxLarge => Padding(
        padding: EdgeInsets.all(xxxLarge),
        child: this,
      );
  Widget get paddingAllGiant => Padding(
        padding: EdgeInsets.all(giant),
        child: this,
      );
  Widget get paddingHorizontalNano => Padding(
        padding: EdgeInsets.symmetric(horizontal: nano),
        child: this,
      );
  Widget get paddingHorizontalMicro => Padding(
        padding: EdgeInsets.symmetric(horizontal: micro),
        child: this,
      );
  Widget get paddingHorizontalTiny => Padding(
        padding: EdgeInsets.symmetric(horizontal: tiny),
        child: this,
      );
  Widget get paddingHorizontalSmall => Padding(
        padding: EdgeInsets.symmetric(horizontal: small),
        child: this,
      );
  Widget get paddingHorizontalNormal => Padding(
        padding: EdgeInsets.symmetric(horizontal: normal),
        child: this,
      );
  Widget get paddingHorizontalMedium => Padding(
        padding: EdgeInsets.symmetric(horizontal: medium),
        child: this,
      );
  Widget get paddingHorizontalLarge => Padding(
        padding: EdgeInsets.symmetric(horizontal: large),
        child: this,
      );
  Widget get paddingHorizontalXLarge => Padding(
        padding: EdgeInsets.symmetric(horizontal: xLarge),
        child: this,
      );
  Widget get paddingHorizontalXxLarge => Padding(
        padding: EdgeInsets.symmetric(horizontal: xxLarge),
        child: this,
      );
  Widget get paddingHorizontalXxxLarge => Padding(
        padding: EdgeInsets.symmetric(horizontal: xxxLarge),
        child: this,
      );
  Widget get paddingHorizontalGiant => Padding(
        padding: EdgeInsets.symmetric(horizontal: giant),
        child: this,
      );
  Widget get paddingVerticalNano => Padding(
        padding: EdgeInsets.symmetric(vertical: nano),
        child: this,
      );
  Widget get paddingVerticalMicro => Padding(
        padding: EdgeInsets.symmetric(vertical: micro),
        child: this,
      );
  Widget get paddingVerticalTiny => Padding(
        padding: EdgeInsets.symmetric(vertical: tiny),
        child: this,
      );
  Widget get paddingVerticalSmall => Padding(
        padding: EdgeInsets.symmetric(vertical: small),
        child: this,
      );
  Widget get paddingVerticalNormal => Padding(
        padding: EdgeInsets.symmetric(vertical: normal),
        child: this,
      );
  Widget get paddingVerticalMedium => Padding(
        padding: EdgeInsets.symmetric(vertical: medium),
        child: this,
      );
  Widget get paddingVerticalLarge => Padding(
        padding: EdgeInsets.symmetric(vertical: large),
        child: this,
      );
  Widget get paddingVerticalXLarge => Padding(
        padding: EdgeInsets.symmetric(vertical: xLarge),
        child: this,
      );
  Widget get paddingVerticalXxLarge => Padding(
        padding: EdgeInsets.symmetric(vertical: xxLarge),
        child: this,
      );
  Widget get paddingVerticalXxxLarge => Padding(
        padding: EdgeInsets.symmetric(vertical: xxxLarge),
        child: this,
      );
  Widget get paddingVerticalGiant => Padding(
        padding: EdgeInsets.symmetric(vertical: giant),
        child: this,
      );
  Widget get paddingLeftNano => Padding(
        padding: EdgeInsets.only(left: nano),
        child: this,
      );
  Widget get paddingLeftMicro => Padding(
        padding: EdgeInsets.only(left: micro),
        child: this,
      );
  Widget get paddingLeftTiny => Padding(
        padding: EdgeInsets.only(left: tiny),
        child: this,
      );
  Widget get paddingLeftSmall => Padding(
        padding: EdgeInsets.only(left: small),
        child: this,
      );
  Widget get paddingLeftNormal => Padding(
        padding: EdgeInsets.only(left: normal),
        child: this,
      );
  Widget get paddingLeftMedium => Padding(
        padding: EdgeInsets.only(left: medium),
        child: this,
      );
  Widget get paddingLeftLarge => Padding(
        padding: EdgeInsets.only(left: large),
        child: this,
      );
  Widget get paddingLeftXLarge => Padding(
        padding: EdgeInsets.only(left: xLarge),
        child: this,
      );
  Widget get paddingLeftXxLarge => Padding(
        padding: EdgeInsets.only(left: xxLarge),
        child: this,
      );
  Widget get paddingLeftXxxLarge => Padding(
        padding: EdgeInsets.only(left: xxxLarge),
        child: this,
      );
  Widget get paddingLeftGiant => Padding(
        padding: EdgeInsets.only(left: giant),
        child: this,
      );
  Widget get paddingRightNano => Padding(
        padding: EdgeInsets.only(right: nano),
        child: this,
      );
  Widget get paddingRightMicro => Padding(
        padding: EdgeInsets.only(right: micro),
        child: this,
      );
  Widget get paddingRightTiny => Padding(
        padding: EdgeInsets.only(right: tiny),
        child: this,
      );
  Widget get paddingRightSmall => Padding(
        padding: EdgeInsets.only(right: small),
        child: this,
      );
  Widget get paddingRightNormal => Padding(
        padding: EdgeInsets.only(right: normal),
        child: this,
      );
  Widget get paddingRightMedium => Padding(
        padding: EdgeInsets.only(right: medium),
        child: this,
      );
  Widget get paddingRightLarge => Padding(
        padding: EdgeInsets.only(right: large),
        child: this,
      );
  Widget get paddingRightXLarge => Padding(
        padding: EdgeInsets.only(right: xLarge),
        child: this,
      );
  Widget get paddingRightXxLarge => Padding(
        padding: EdgeInsets.only(right: xxLarge),
        child: this,
      );
  Widget get paddingRightXxxLarge => Padding(
        padding: EdgeInsets.only(right: xxxLarge),
        child: this,
      );
  Widget get paddingRightGiant => Padding(
        padding: EdgeInsets.only(right: giant),
        child: this,
      );
  Widget get paddingTopNano => Padding(
        padding: EdgeInsets.only(top: nano),
        child: this,
      );
  Widget get paddingTopMicro => Padding(
        padding: EdgeInsets.only(top: micro),
        child: this,
      );
  Widget get paddingTopTiny => Padding(
        padding: EdgeInsets.only(top: tiny),
        child: this,
      );
  Widget get paddingTopSmall => Padding(
        padding: EdgeInsets.only(top: small),
        child: this,
      );
  Widget get paddingTopNormal => Padding(
        padding: EdgeInsets.only(top: normal),
        child: this,
      );
  Widget get paddingTopMedium => Padding(
        padding: EdgeInsets.only(top: medium),
        child: this,
      );
  Widget get paddingTopLarge => Padding(
        padding: EdgeInsets.only(top: large),
        child: this,
      );
  Widget get paddingTopXLarge => Padding(
        padding: EdgeInsets.only(top: xLarge),
        child: this,
      );
  Widget get paddingTopXxLarge => Padding(
        padding: EdgeInsets.only(top: xxLarge),
        child: this,
      );
  Widget get paddingTopXxxLarge => Padding(
        padding: EdgeInsets.only(top: xxxLarge),
        child: this,
      );
  Widget get paddingTopGiant => Padding(
        padding: EdgeInsets.only(top: giant),
        child: this,
      );
  Widget get paddingBottomNano => Padding(
        padding: EdgeInsets.only(bottom: nano),
        child: this,
      );
  Widget get paddingBottomMicro => Padding(
        padding: EdgeInsets.only(bottom: micro),
        child: this,
      );
  Widget get paddingBottomTiny => Padding(
        padding: EdgeInsets.only(bottom: tiny),
        child: this,
      );
  Widget get paddingBottomSmall => Padding(
        padding: EdgeInsets.only(bottom: small),
        child: this,
      );
  Widget get paddingBottomNormal => Padding(
        padding: EdgeInsets.only(bottom: normal),
        child: this,
      );
  Widget get paddingBottomMedium => Padding(
        padding: EdgeInsets.only(bottom: medium),
        child: this,
      );
  Widget get paddingBottomLarge => Padding(
        padding: EdgeInsets.only(bottom: large),
        child: this,
      );
  Widget get paddingBottomXLarge => Padding(
        padding: EdgeInsets.only(bottom: xLarge),
        child: this,
      );
  Widget get paddingBottomXxLarge => Padding(
        padding: EdgeInsets.only(bottom: xxLarge),
        child: this,
      );
  Widget get paddingBottomXxxLarge => Padding(
        padding: EdgeInsets.only(bottom: xxxLarge),
        child: this,
      );
  Widget get paddingBottomGiant => Padding(
        padding: EdgeInsets.only(bottom: giant),
        child: this,
      );
}
