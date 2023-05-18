import 'package:flutter/material.dart';

class SecondaryChip extends StatelessWidget {
  const SecondaryChip({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.highlightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 2,
        ),
        child: Text(
          text,
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
