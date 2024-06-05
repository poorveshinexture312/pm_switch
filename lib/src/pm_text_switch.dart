import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pm_switch/src/pm_switch.dart';

class TextSwitch extends PMDynamicSwitch {
  final String activeText;
  final String inactiveText;

  TextSwitch({
    required bool isSwitched,
    required ValueChanged<bool> onChanged,
    this.activeText = 'ON',
    this.inactiveText = 'OFF',
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
      child: Container(
        color: isSwitched ? activeColor : inactiveTrackColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          isSwitched ? activeText : inactiveText,
          style: TextStyle(
            color: isSwitched ? inactiveThumbColor : activeTrackColor,
          ),
        ),
      ),
    );
  }
}
