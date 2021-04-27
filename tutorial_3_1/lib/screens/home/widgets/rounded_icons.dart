import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final _color;
  final _size;
  final _roundness;
  final _icon;

  RoundedIcon({color, size, roundness, icon = Icons.alarm})
      : _color = color,
        _size = size,
        _roundness = roundness,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[100],
            border: Border.all(width: 5.0, color: _color),
            borderRadius: BorderRadius.all(Radius.circular(_roundness))),
        child: Icon(_icon, color: _color, size: _size));
  }
}
