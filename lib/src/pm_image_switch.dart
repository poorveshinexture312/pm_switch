import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pm_switch/src/pm_switch.dart';

class ImageSwitch extends PMDynamicSwitch {
  final String activeImage;
  final String inactiveImage;
  final double switchWidth;
  final double switchHeight;

  ImageSwitch({
    required bool isSwitched,
    required ValueChanged<bool> onChanged,
    required this.activeImage,
    required this.inactiveImage,
    this.switchWidth = 50.0,
    this.switchHeight = 50.0,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
    ImageProvider? activeThumbImage,
    ImageErrorListener? onActiveThumbImageError,
    ImageProvider? inactiveThumbImage,
    ImageErrorListener? onInactiveThumbImageError,
    MaterialStateProperty<Color?>? thumbColor,
    MaterialStateProperty<Color?>? trackColor,
    MaterialStateProperty<Color?>? trackOutlineColor,
    MaterialStateProperty<double?>? trackOutlineWidth,
    MaterialStateProperty<Icon?>? thumbIcon,
    MaterialTapTargetSize? materialTapTargetSize,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    FocusNode? focusNode,
    ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
  }) : super(
          isSwitched: isSwitched,
          onChanged: onChanged,
          activeColor: activeColor,
          activeTrackColor: activeTrackColor,
          inactiveThumbColor: inactiveThumbColor,
          inactiveTrackColor: inactiveTrackColor,
          activeThumbImage: activeThumbImage,
          onActiveThumbImageError: onActiveThumbImageError,
          inactiveThumbImage: inactiveThumbImage,
          onInactiveThumbImageError: onInactiveThumbImageError,
          thumbColor: thumbColor,
          trackColor: trackColor,
          trackOutlineColor: trackOutlineColor,
          trackOutlineWidth: trackOutlineWidth,
          thumbIcon: thumbIcon,
          materialTapTargetSize: materialTapTargetSize,
          dragStartBehavior: dragStartBehavior,
          mouseCursor: mouseCursor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: overlayColor,
          splashRadius: splashRadius,
          focusNode: focusNode,
          onFocusChange: onFocusChange,
          autofocus: autofocus,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isSwitched);
      },
      child: Image.asset(
        isSwitched ? activeImage : inactiveImage,
        width: switchWidth,
        height: switchHeight,
      ),
    );
  }
}
