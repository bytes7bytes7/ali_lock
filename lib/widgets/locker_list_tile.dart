import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'secondary_chip.dart';

class LockerListTile extends StatelessWidget {
  const LockerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.orange,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Locker 1',
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  'id: dh324fhlcasshf',
                  style: theme.textTheme.bodyMedium,
                ),
                const SecondaryChip(
                  text: 'UNLOCKED',
                ),
              ],
            ),
          ),
          CupertinoSwitch(
            value: false,
            onChanged: (v) {},
          ),
        ],
      ),
    );
  }
}
