import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    super.key,
    required this.color,
    required this.onChanged,
  });

  final Color color;
  final ValueChanged<Color> onChanged;

  static const colors = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        for (final option in colors)
          GestureDetector(
            onTap: () => onChanged(option),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(color: option, shape: BoxShape.circle),
            ),
          ),
      ],
    );
  }
}
