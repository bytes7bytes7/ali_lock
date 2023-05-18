import 'package:flutter/material.dart';

import '../widgets/locker_list_tile.dart';

class MyLockersScreen extends StatelessWidget {
  const MyLockersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
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
    );
  }
}
