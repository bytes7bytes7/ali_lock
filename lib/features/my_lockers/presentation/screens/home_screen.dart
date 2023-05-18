// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../application/blocs/home/home_bloc.dart';
import '../../application/blocs/my_lockers/my_lockers_bloc.dart';
import '../widgets/widgets.dart';
import 'my_lockers_screen.dart';

const _tabIconSize = 24.0;
final _getIt = GetIt.instance;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final tabs = [
      BottomNavigationBarItem(
        label: 'My lockers',
        activeIcon: SizedIcon(
          icon: Assets.image.svg.myLockers.svg(
            color: theme.bottomNavigationBarTheme.selectedItemColor,
          ),
          size: const Size.square(_tabIconSize),
        ),
        icon: SizedIcon(
          icon: Assets.image.svg.myLockers.svg(
            color: theme.bottomNavigationBarTheme.unselectedItemColor,
          ),
          size: const Size.square(_tabIconSize),
        ),
      ),
      BottomNavigationBarItem(
        label: 'My friends',
        activeIcon: SizedIcon(
          icon: Assets.image.svg.friends.svg(
            color: theme.bottomNavigationBarTheme.selectedItemColor,
          ),
          size: const Size.square(_tabIconSize),
        ),
        icon: SizedIcon(
          icon: Assets.image.svg.friends.svg(
            color: theme.bottomNavigationBarTheme.unselectedItemColor,
          ),
          size: const Size.square(_tabIconSize),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Profile',
        activeIcon: SizedIcon(
          icon: Assets.image.svg.profile.svg(
            color: theme.bottomNavigationBarTheme.selectedItemColor,
          ),
          size: const Size.square(_tabIconSize),
        ),
        icon: SizedIcon(
          icon: Assets.image.svg.profile.svg(
            color: theme.bottomNavigationBarTheme.unselectedItemColor,
          ),
          size: const Size.square(_tabIconSize),
        ),
      ),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(
            HomeState(
              tabsAmount: tabs.length,
              selectedTabIndex: 0,
            ),
          ),
        ),
        BlocProvider<MyLockersBloc>(
          create: (context) =>
              _getIt.get<MyLockersBloc>()..add(const LoadDataMyLockersEvent()),
        ),
        // bloc providers for 'My friends' and 'Profile'
      ],
      child: Builder(
        builder: (context) {
          final bloc = context.read<HomeBloc>();

          return BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Scaffold(
                body: _getBody(state.selectedTabIndex),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: state.selectedTabIndex,
                  onTap: (i) => bloc.add(ChangeTabHomeEvent(index: i)),
                  items: tabs,
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const MyLockersScreen();
      default:
        return const Scaffold();
    }
  }
}
