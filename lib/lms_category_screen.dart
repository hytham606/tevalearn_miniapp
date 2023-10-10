import 'package:flutter/material.dart';
import 'package:soar_quest/soar_quest.dart';

class LMSCategorySelectScreen extends CategorySelectScreen {
  LMSCategorySelectScreen(
      {required super.itemsCollection,
      required super.categoryField,
      super.title});

  @override
  Screen docScreen(SQDoc doc) {
    final slice = CollectionSlice(itemsCollection,
        filter: RefFilter(categoryField.name, doc.ref));
    return CardsScreen(
        title: '${doc.label} ${itemsCollection.id}', collection: slice);
  }

  @override
  Widget docDisplay(SQDoc doc) {
    final categoryDoc = doc;
    final allCourses = itemsCollection.docs;

    final count = allCourses
        .where((course) =>
            course.getValue<SQRef>(categoryField.name) == categoryDoc.ref)
        .toList()
        .length;

    return Card(
      child: InkWell(
        onTap: () async => goToDocScreen(docScreen(doc)),
        child: Column(
          children: [
            if (doc.imageLabel != null)
              Image.network(doc.imageLabel!, height: 120)
            else
              const SizedBox(
                  height: 120, child: Center(child: Text('No Image'))),
            Text(doc.label),
            Align(
              child: Text('$count courses'),
            )
          ],
        ),
      ),
    );
  }
}
