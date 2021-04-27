import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final _currentValue;
  final _min;
  final _max;
  final _state;

  SliderWidget({currentValueSize, min, max, state})
      : _currentValue = currentValueSize,
        _min = min,
        _max = max,
        _state = state;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _currentValue,
        min: _min,
        max: _max,
        onChanged: (double value) =>
            _state.currentValue = value.roundToDouble());
  }
}
