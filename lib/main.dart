import 'package:flutter/material.dart';

import 'backups.dart';
import 'course_select_screen.dart';
import 'lms_search_field.dart';
import 'package:soar_quest/soar_quest.dart';

import 'lms_tabs_screen.dart';
import 'my_courses_screen.dart';
import 'static_data.dart';

late MiniAppCollection categories;
late MiniAppCollection courses;
late MiniAppCollection lessons;

bool isAdmin() => UserSettings.getSetting<bool>('Admin Mode')!;

void main() async {
  await SQApp.init('Enablisty Job Listings');
  await UserSettings.setSettings(
      [SQBoolField('Admin Mode')..defaultValue = true],
      restartLink: 'https://t.me/SoarQuestEnablistybot/job_listings');

  categories = MiniAppCollection(id: 'Category', fields: [
    SQStringField('Title'),
    SQStringField('Description'),
    SQImageLinkField('Image'),
  ]);

  courses = MiniAppCollection(
    id: 'Courses',
    fields: [
      SQStringField('Course Title'),
      SQStringField('Instructor'),
      SQImageLinkField('Course Image'),
      SQStringField('Course Duration'),
      SQStringField('Course Likes'),
      SQBoolField('Promoted'),
      SQStringField('Price'),
      SQRefField('Category', collection: categories),
    ],
    filters: [TextSearchFiler(LMSSearchField('Course Title'))],
  );

  lessons = MiniAppCollection(
    id: 'Lessons',
    fields: [
      SQStringField('Lesson Name'),
      SQStringField('Lesson Duration'),
      SQVideoIDField('Lesson Video'),
      SQStringField('Lesson Description'),
      SQStringField('Lesson Resources'),
      SQTextDocField('Lesson Transcript'),
      SQRefField('Course', collection: courses),
    ],
    // actions: [CustomAction('Serialize', customExecute: getSerialForCollections)],
    updates: isAdmin() ? const SQUpdates() : SQUpdates.readOnly(),
  );

  courses.fields.add(SQInverseRefsField('Lessons',
      refCollection: () => lessons, refFieldName: 'Course'));

  final instructors = MiniAppCollection(id: 'Instructors', fields: [
    SQStringField('Instructor Name'),
    SQTextDocField('Instructor Information'),
    SQImageLinkField('Instructor Image'),
    SQListField(SQRefField('Courses', collection: courses)),
  ]);

  await courses.loadCollection();
  await instructors.loadCollection();
  await categories.loadCollection();
  await lessons.loadCollection();

  // await loadCollectionsWithInitData();
  await testAdd();

  MiniApp.expand();
  SQApp.run([
    LMSTabsScreen('Test Tabs', screens: [
      CourseSelectScreen(
          title: 'Explore',
          itemsCollection: courses,
          categoryField: courses.getField<SQRefField>('Category')!)
        ..icon = Icons.explore
        ..childAspectRatio = 0.6,
      CardsScreen(collection: courses, title: 'Search')..icon = Icons.search,
      LMSMyCoursesScreen(
          title: 'My Courses',
          favouritesFeature: FavouritesFeature(collection: courses))
        ..icon = Icons.person,
      CollectionScreen(collection: lessons)..show = (context) => isAdmin(),
      CardsScreen(collection: categories)..show = (context) => isAdmin(),
    ])
      ..appbarEnabled = true
  ], themeData: MiniApp.themeParams.toMaterialThemeData());
}
