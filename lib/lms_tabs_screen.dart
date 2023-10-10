// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:soar_quest/soar_quest.dart';

class LMSTabsScreen extends TabsScreen {
  LMSTabsScreen(super.title, {required super.screens});

  @override
  Tab screenTab(Screen screen) => Tab(
        child: Row(
          children: [
            Icon(screen.icon),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(screen.title),
            ),
          ],
        ),
      );
}
