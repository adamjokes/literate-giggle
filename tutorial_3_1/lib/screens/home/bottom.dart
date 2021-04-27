import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  Bottom({state}) : _state = state;

  final _state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: Column(
        children: [
          Text(
              'Size :${_state.size.round()}       Roundness: ${_state.roundness.round()}'),
          Slider(
            value: _state.size,
            min: 0.0,
            max: 300.0,
            onChanged: (value) => _state.size = value,
          ),
          Slider(
            value: _state.roundness,
            min: 0.0,
            max: 150.0,
            onChanged: (value) => _state.roundness = value,
          ),
        ],
      ),
    );
  }
}
