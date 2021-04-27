import 'package:flutter/material.dart';

import 'widgets/color_button.dart';

class Float extends StatelessWidget {
  Float({state}) : _state = state;
  final _state;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ColorButton(
          color: Colors.red,
          label: 'Red',
          state: _state,
        ),
        ColorButton(
          color: Colors.blue,
          label: 'Blue',
          state: _state,
        ),
        ColorButton(
          color: Colors.green,
          label: 'Green',
          state: _state,
        ),
      ],
    );
  }
}
