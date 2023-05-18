import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/my_lockers/my_lockers_bloc.dart';
import '../gen/assets.gen.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/locker_list_tile.dart';

const _mainSheetRadius = 22.0;
const _paddingH = 24.0;

class MyLockersScreen extends StatelessWidget {
  const MyLockersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                  const _LockersList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LockersList extends StatelessWidget {
  const _LockersList();

  @override
  Widget build(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    return BlocConsumer<MyLockersBloc, MyLockersState>(
      listener: (context, state) {
        if (state.error.isNotEmpty) {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final itemCount = state.lockers.length + 1;

        return Expanded(
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                return const _AddLockerButton();
              }

              final locker = state.lockers[index];

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _paddingH,
                  vertical: 8,
                ),
                child: LockerListTile(
                  locker: locker,
                  onSwitched: (v) {},
                ),
              );
            },
          ),
        );
      },
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
