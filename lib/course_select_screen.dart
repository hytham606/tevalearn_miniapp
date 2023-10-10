import 'package:flutter/material.dart';

import 'lms_category_screen.dart';

class CourseSelectScreen extends LMSCategorySelectScreen {
  CourseSelectScreen(
      {required super.itemsCollection,
      required super.categoryField,
      super.title});

  @override
  Widget collectionDisplay(docs) => SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://i.ibb.co/dDP1ZGx/file-cover-2.png',
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Explore Categories',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    columns, // Assuming 'columns' is defined elsewhere
              ),
              itemBuilder: (context, index) => docDisplay(docs[index]),
              itemCount: docs.length,
            ),
          ],
        ),
      );
}
