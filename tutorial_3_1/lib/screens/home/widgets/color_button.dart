import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final _color;
  final _label;
  final _state;

  ColorButton({color, label, state})
      : _color = color,
        _label = label,
        _state = state;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => _state.color = _color,
      backgroundColor: _color,
      label: Text(_label),
      icon: Icon(Icons.colorize),
    );
  }
}
