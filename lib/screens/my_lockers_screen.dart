import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/locker_list_tile.dart';
import '../widgets/sized_icon.dart';

const _mainSheetRadius = 22.0;
const _paddingH = 24.0;
const _tabIconSize = 24.0;

class MyLockersScreen extends StatelessWidget {
  const MyLockersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: _Body(theme: theme),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (i) {},
        items: [
          BottomNavigationBarItem(
            label: 'My lockers',
            icon: SizedIcon(
              icon: Assets.image.svg.myLockers.svg(),
              size: const Size.square(_tabIconSize),
            ),
          ),
          BottomNavigationBarItem(
            label: 'My friends',
            icon: SizedIcon(
              icon: Assets.image.svg.friends.svg(),
              size: const Size.square(_tabIconSize),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SizedIcon(
              icon: Assets.image.svg.profile.svg(),
              size: const Size.square(_tabIconSize),
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                right: _paddingH,
                left: _paddingH,
                top: 24,
                bottom: 26,
              ),
              child: Assets.image.svg.miniLogo.svg(),
            ),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: theme.colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(_mainSheetRadius),
                  topRight: Radius.circular(_mainSheetRadius),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: _paddingH,
                      vertical: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My lockers',
                          style: theme.textTheme.displayLarge,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: CustomIconButton(
                            icon: Assets.image.svg.logOut.svg(),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        if (index == 2) {
                          return const _AddLockerButton();
                        }

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: _paddingH,
                            vertical: 8,
                          ),
                          child: LockerListTile(
                            title: 'Locker 1',
                            id: 'du2dh22fhfe2',
                            isLocked: false,
                            onSwitched: (v) {},
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AddLockerButton extends StatelessWidget {
  const _AddLockerButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: 40,
      ),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('+ Add locker'),
          ),
        ],
      ),
    );
  }
}
