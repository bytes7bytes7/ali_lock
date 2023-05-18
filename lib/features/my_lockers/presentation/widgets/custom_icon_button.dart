import 'package:flutter/material.dart';

import 'sized_icon.dart';

const _defaultSize = 24.0;

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = _defaultSize,
  });

  final Widget icon;
  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 24,
      icon: SizedIcon(
        icon: icon,
        size: Size.square(size),
      ),
    );
  }
}
