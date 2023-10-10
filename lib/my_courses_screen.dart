import 'package:flutter/material.dart';

import 'package:soar_quest/soar_quest.dart';

class LMSMyCoursesScreen extends FavouritesScreen {
  LMSMyCoursesScreen(
      {required super.favouritesFeature, super.icon, super.title});

  @override
  Widget screenBody() {
    var docs = collection.docs;

    return SingleChildScrollView(
      child: Column(
        children: [
          // if (!isInline) filtersDisplay(),
          filtersDisplay(),
          collectionDisplay(docs),
        ],
      ),
    );
  }

  @override
  Widget collectionDisplay(docs) {
    final oldList = super.collectionDisplay(docs);
    final user = MiniApp.initData.user;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${user.firstName} ${user.lastName}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '${user.username}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SQButton('Admin Settings',
                    onPressed: () async =>
                        navigateTo(UserSettings.settingsScreen())),
              ],
            ),
            // (UserSettings.settingsScreen()..isInline = true).toWidget(),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Favorite Courses',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
          ],
        ),
        oldList,
      ],
    );
  }
}
