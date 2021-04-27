import 'package:flutter/material.dart';

import 'widgets/rounded_icons.dart';

class Body extends StatelessWidget {
  Body({color, size, roundness})
      : _color = color,
        _size = size,
        _roundness = roundness;

  final _color, _size, _roundness;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RoundedIcon(
        color: _color,
        size: _size,
        icon: Icons.alarm,
        roundness: _roundness,
      ),
    );
  }
}
