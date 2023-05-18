import 'package:flutter/material.dart';

import 'sized_icon.dart';

const _defaultSize = 24.0;

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.size = _defaultSize,
  });

  final Widget icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      onPressed: () {},
      splashColor: theme.primaryColor.withOpacity(0.2),
      highlightColor: theme.primaryColor.withOpacity(0.05),
      splashRadius: 24,
      icon: SizedIcon(
        icon: icon,
        size: Size.square(size),
      ),
    );
  }
}
