import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'custom_chip.dart';
import 'sized_icon.dart';

const _circleAvatarRadius = 24.0;
const _iconSize = 24.0;
const _avatarAndTitleSeparator = 20.0;
const _avatarAndChipSeparator = 10.0;

class LockerListTile extends StatelessWidget {
  const LockerListTile({
    super.key,
    required this.title,
    required this.id,
    required this.isLocked,
    required this.onSwitched,
  });

  final String title;
  final String id;
  final bool isLocked;
  final void Function(bool) onSwitched;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final color = isLocked ? theme.primaryColor : theme.highlightColor;
    final icon =
        isLocked ? Assets.image.svg.lock : Assets.image.svg.unlockedLock;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: _circleAvatarRadius,
                child: SizedIcon(
                  size: const Size.square(_iconSize),
                  icon: icon.svg(),
                ),
              ),
              const SizedBox(
                width: _avatarAndTitleSeparator,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      'id: $id',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CupertinoSwitch(
                value: isLocked,
                activeColor: theme.primaryColor,
                onChanged: onSwitched,
              ),
            ],
          ),
          const SizedBox(
            height: _avatarAndChipSeparator,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 2 * _circleAvatarRadius + _avatarAndTitleSeparator,
            ),
            child: CustomChip(
              text: 'UNLOCKED',
              background: color,
            ),
          ),
        ],
      ),
    );
  }
}
