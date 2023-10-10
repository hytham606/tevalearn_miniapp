// ignore_for_file: unnecessary_string_escapes

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:soar_quest/soar_quest.dart';

import 'main.dart';

Future<void> getSerialForCollections(sqDoc, Screen screen) async {
  debugPrint('Serializing docs');

  debugPrint('Categories:');
  debugPrint(getSerialForCollection(categories));

  debugPrint('Courses:');
  debugPrint(getSerialForCollection(courses));

  debugPrint('Lessons:');
  debugPrint(getSerialForCollection(lessons));
}

const categroiesInitJson =
    '[{"id":"4cd75100-ecde-1d26-9997-6db5990387bf","data":{"Category Title":"Graphic Design","Cateogry Image":"https://ouch-cdn2.icons8.com/oa5VWbZo4vRSCeBkK3iAuG64ryU-8IffsVR353aV24A/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMzMv/MGRhOGVmNzctNDk2/MC00Y2ZhLTk2ZmIt/NjUxMzYyMTdlNjE3/LnBuZw.png","Courses Count":null}},{"id":"ce746080-f3fb-1d26-9997-6db5990387bf","data":{"Category Title":"Programming","Cateogry Image":"https://ouch-cdn2.icons8.com/qHCXPMf6QLQBWyk4w9p5TiuWdochpyGBJYraZUxQck0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODUz/Lzk4MDcxYzdjLTI3/MjEtNDAxZC04MjAz/LTU2ZWFjNTNjMDdl/Ny5wbmc.png","Courses Count":null}},{"id":"85d3d180-bb45-1d2e-b901-f75bc679137d","data":{"Category Title":"Marketing","Cateogry Image":"https://ouch-cdn2.icons8.com/jSslwEaeuKxqh86NkKRuRJ9K-QgIs63Y37q6w6mxEsk/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjY1/L2YxZmI4Y2U1LTUy/OWMtNGY0ZS1iNTBh/LTgxZWUyMTIwMzU1/NC5wbmc.png","Courses Count":null}}]';
// '''[{"id":"4cd75100-ecde-1d26-9997-6db5990387bf","data":{"Category Title":"Graphic Design","Cateogry Image":"https://ouch-cdn2.icons8.com/m4KPM1HJ5Kpmq8wxT8-Q7WcObLE44oEZ5ajmO3ZDcnI/rs…y9wbmcvNTA2/LzUwM2FjYmE0LTll/ZGYtNDUwNy04Y2Ji/LTVmYTNmYzVhZTFj/NC5wbmc.png","Courses Count":null}},{"id":"ce746080-f3fb-1d26-9997-6db5990387bf","data":{"Category Title":"Programming","Cateogry Image":"https://ouch-cdn2.icons8.com/YFz-whOp5v5BK4J3wTEMgxD5joiJsBJs71GR6ZCA54Y/rs…y9wbmcvNTQx/Lzc5OGM3OWRjLTM5/NjAtNDcwMC1iZmMy/LTY3NTY2YTE4NjU4/MC5wbmc.png","Courses Count":null}},{"id":"9a259200-f445-1d26-9997-6db5990387bf","data":{"Category Title":"Marketing","Cateogry Image":"https://ouch-cdn2.icons8.com/Kox7kyjagXoY_51Uz596Gwognlo0JPnpgcselnacag0/rs…y9wbmcvNzcw/LzY4MDM1YzM1LTRi/NDEtNDRiYS1hNzEw/LWJjNDU5ZjhkZWYy/OC5wbmc.png","Courses Count":null}}]''';

const coursesInitJson =
    '[{"id":"5f6b3a80-f4d5-1d26-9997-6db5990387bf","data":{"Course Title":"Photoshop for Beginners","Instructor":"PiXimperfect","Course Image":"https://ouch-cdn2.icons8.com/_C0dvTlmmBkErBymsxV7p7tMtXqk7g83zqjRFjm8ol8/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODgx/L2UyN2Y3YmRiLTdj/ODMtNDY3NS04YjVh/LTg1MDJmMTZlOTg0/My5wbmc.png","Course Duration":"3 Hours","Course Likes":"4","Promoted":false,"Price":"Free","Category":{"docId":"4cd75100-ecde-1d26-9997-6db5990387bf","label":"Graphic Design","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}},{"id":"d1445480-07f3-1d27-a661-c9bcb975c984","data":{"Course Title":"Illustrator for Beginners","Instructor":"Gareth David","Course Image":"https://ouch-cdn2.icons8.com/hyIuv4PU5uE7yMQURdFq-jfII88z83J59Dl66z3ICOQ/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTU4/L2U5ODU2Yzk1LTQw/ODItNGVmNS1hMzNi/LWMzODQ3MjMxNWEy/Mi5wbmc.png","Course Duration":"4 Hours","Course Likes":"5","Promoted":null,"Price":"12","Category":{"docId":"4cd75100-ecde-1d26-9997-6db5990387bf","label":"Graphic Design","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}},{"id":"040ea280-0c63-1d27-a661-c9bcb975c984","data":{"Course Title":"Python for Beginners","Instructor":"Network Chuck","Course Image":"https://ouch-cdn2.icons8.com/-lmpeZ9rEABImqUVvCTj28Y3PpT0B2vTyJzj1uoyc9U/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjg2/LzdmMWM2NmVmLWM5/MzUtNDZkNy1hMWMz/LTcwYWFmYzA2MzEy/Zi5wbmc.png","Course Duration":"2 Hours","Course Likes":"5","Promoted":false,"Price":"Free","Category":{"docId":"ce746080-f3fb-1d26-9997-6db5990387bf","label":"Programming","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}},{"id":"b7298980-1423-1d27-ab9d-83c937e21662","data":{"Course Title":"Facebook Ads for Beginners","Instructor":"Facebook Ads Tutorial for Beginners","Course Image":"https://ouch-cdn2.icons8.com/ccGgpyuvuK6okwCCpER7NzDs69YzfH_wC6Evz9z4Wp0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDAy/LzNlMGYzMjg4LTc3/NjAtNGZiYi05MDUx/LTQxZjQ1ODEyNDE4/MS5wbmc.png","Course Duration":"30 Minutes","Course Likes":"20","Promoted":false,"Price":"Free","Category":{"docId":"9a259200-f445-1d26-9997-6db5990387bf","label":"Marketing","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}}]';
// '''[{"id":"5f6b3a80-f4d5-1d26-9997-6db5990387bf","data":{"Course Title":"Photoshop for Beginners","Instructor":"PiXimperfect","Course Image":"https://ouch-cdn2.icons8.com/_C0dvTlmmBkErBymsxV7p7tMtXqk7g83zqjRFjm8ol8/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODgx/L2UyN2Y3YmRiLTdj/ODMtNDY3NS04YjVh/LTg1MDJmMTZlOTg0/My5wbmc.png","Course Duration":"3 Hours","Course Likes":"4","Promoted":false,"Price":"Free","Category":{"docId":"4cd75100-ecde-1d26-9997-6db5990387bf","label":"Graphic Design","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}},{"id":"d1445480-07f3-1d27-a661-c9bcb975c984","data":{"Course Title":"Illustrator for Beginners","Instructor":"Gareth David","Course Image":"https://ouch-cdn2.icons8.com/hyIuv4PU5uE7yMQURdFq-jfII88z83J59Dl66z3ICOQ/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTU4/L2U5ODU2Yzk1LTQw/ODItNGVmNS1hMzNi/LWMzODQ3MjMxNWEy/Mi5wbmc.png","Course Duration":"4 Hours","Course Likes":"5","Promoted":null,"Price":"12\$","Category":{"docId":"4cd75100-ecde-1d26-9997-6db5990387bf","label":"Graphic Design","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}},{"id":"040ea280-0c63-1d27-a661-c9bcb975c984","data":{"Course Title":"Python for Beginners","Instructor":"Network Chuck","Course Image":"https://ouch-cdn2.icons8.com/-lmpeZ9rEABImqUVvCTj28Y3PpT0B2vTyJzj1uoyc9U/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjg2/LzdmMWM2NmVmLWM5/MzUtNDZkNy1hMWMz/LTcwYWFmYzA2MzEy/Zi5wbmc.png","Course Duration":"2 Hours","Course Likes":"5","Promoted":false,"Price":"Free","Category":{"docId":"ce746080-f3fb-1d26-9997-6db5990387bf","label":"Programming","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}},{"id":"b7298980-1423-1d27-ab9d-83c937e21662","data":{"Course Title":"Facebook Ads for Beginners","Instructor":"Facebook Ads Tutorial for Beginners","Course Image":"https://ouch-cdn2.icons8.com/ccGgpyuvuK6okwCCpER7NzDs69YzfH_wC6Evz9z4Wp0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDAy/LzNlMGYzMjg4LTc3/NjAtNGZiYi05MDUx/LTQxZjQ1ODEyNDE4/MS5wbmc.png","Course Duration":"30 Minutes","Course Likes":"20","Promoted":false,"Price":"Free","Category":{"docId":"9a259200-f445-1d26-9997-6db5990387bf","label":"Marketing","collectionPath":"Example Apps/Enablisty Job Listings/Category"}}}]''';

const lessonsInitJson =
    '''[{"id":"53421580-be72-1d2e-b901-f75bc679137d","data":{"Lesson Name":"PS Lesson 1","Lesson Duration":"45 Minutes","Lesson Video":"xTzvQkOll2U","Lesson Description":"Whether you are starting from scratch or want to build a strong and solid foundation, this is the lesson to help you every step of the way. ","Lesson Resources":"https://www.youtube.com/playlist?list=PLLlSBGLVsEPIFGSGw2zJ2K43V5vxMMMTE","Lesson Transcript":"[{\"insert\":\"00:00\\nby the end of this video Photoshop will never look intimidating to you and if it does I'm gonna give you a hundred percent money back guarantee please refer to these chapters to skip to any section of the video\\n\"}]","Course":{"docId":"5f6b3a80-f4d5-1d26-9997-6db5990387bf","label":"Photoshop for Beginners","collectionPath":"Example Apps/Enablisty Job Listings/Courses"}}},{"id":"e3906100-bf2b-1d2e-b901-f75bc679137d","data":{"Lesson Name":"PS Lesson 2","Lesson Duration":"48 Minutes","Lesson Video":"unCS9syPJjg","Lesson Description":null,"Lesson Resources":null,"Lesson Transcript":null,"Course":{}}},{"id":"69e9a600-c0d8-1d2e-b901-f75bc679137d","data":{"Lesson Name":"Illustrator Lesson 1","Lesson Duration":"6 Minutes","Lesson Video":"IBouhf4seWQ","Lesson Description":"On this course I will be introducing you to the program and covering some essential practise exercises. ","Lesson Resources":"https://www.youtube.com/playlist?list=PLYfCBK8IplO4X-jM1Rp43wAIdpP2XNGwP","Lesson Transcript":"[{\"insert\":\"00:01\\n[ Music ] >> Hello and welcome to the complete beginners guide to Adobe Illustrator, brought to you by tastytuts.com. This is a course created for beginners to Adobe Illustrator.\\n\"}]","Course":{"docId":"d1445480-07f3-1d27-a661-c9bcb975c984","label":"Illustrator for Beginners ","collectionPath":"Example Apps/Enablisty Job Listings/Courses"}}},{"id":"e5c41b00-c1ca-1d2e-b901-f75bc679137d","data":{"Lesson Name":"Python Lesson 1","Lesson Duration":"17 Minutes","Lesson Video":"mRMmlo_Uqcs","Lesson Description":"Introduction to learn python programming.","Lesson Resources":"https://www.youtube.com/playlist?list=PLIhvC56v63ILPDA2DQBv0IKzqsWTZxCkp","Lesson Transcript":"[{\"insert\":\"00:00\\nYou need to learn Python right now. Hold up. Why? What, why do you need to learn Python right now? \\n\"}]","Course":{"docId":"040ea280-0c63-1d27-a661-c9bcb975c984","label":"Python Introduction","collectionPath":"Example Apps/Enablisty Job Listings/Courses"}}},{"id":"24d09a00-c2b9-1d2e-b901-f75bc679137d","data":{"Lesson Name":"FB Ads Lesson","Lesson Duration":"30 Minutes","Lesson Video":"Dymukpfbg4A","Lesson Description":"Learn how to setup a profitable Facebook Ad from scratch for beginners, business owners and entrepreneurs in 2023 within 30 minutes.","Lesson Resources":"-","Lesson Transcript":"[{\"insert\":\"Learn how to setup a profitable Facebook Ad from scratch for beginners, business owners and entrepreneurs in 2023 within 30 minutes.\\n\"}]","Course":{"docId":"b7298980-1423-1d27-ab9d-83c937e21662","label":"Facebook Ads for Beginners","collectionPath":"Example Apps/Enablisty Job Listings/Courses"}}}]''';
// ''' '''
// '''[{"id":"4cd75100-ecde-1d26-9997-6db5990387bf","data":{"Category Title":"Graphic Design","Cateogry Image":"https://ouch-cdn2.icons8.com/oa5VWbZo4vRSCeBkK3iAuG64ryU-8IffsVR353aV24A/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMzMv/MGRhOGVmNzctNDk2/MC00Y2ZhLTk2ZmIt/NjUxMzYyMTdlNjE3/LnBuZw.png","Courses Count":null}},{"id":"ce746080-f3fb-1d26-9997-6db5990387bf","data":{"Category Title":"Programming","Cateogry Image":"https://ouch-cdn2.icons8.com/qHCXPMf6QLQBWyk4w9p5TiuWdochpyGBJYraZUxQck0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODUz/Lzk4MDcxYzdjLTI3/MjEtNDAxZC04MjAz/LTU2ZWFjNTNjMDdl/Ny5wbmc.png","Courses Count":null}},{"id":"85d3d180-bb45-1d2e-b901-f75bc679137d","data":{"Category Title":"Marketing","Cateogry Image":"https://ouch-cdn2.icons8.com/jSslwEaeuKxqh86NkKRuRJ9K-QgIs63Y37q6w6mxEsk/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjY1/L2YxZmI4Y2U1LTUy/OWMtNGY0ZS1iNTBh/LTgxZWUyMTIwMzU1/NC5wbmc.png","Courses Count":null}}]''';

String getSerialForCollection(MiniAppCollection collection) {
  final serializedCatDocs = collection.docs
      .map((doc) => {'id': doc.id, 'data': doc.serialize()})
      .toList();

  final jsonencoding = jsonEncode(serializedCatDocs);
  return jsonencoding;
}

Future<void> loadCollectionsWithInitData() async {
  if (categories.docs.isEmpty) {
    // await loadCollection(categroiesInitJson, categories);
    await MiniApp.cloudStorage.setItem('Categpry', categroiesInitJson);
  }
  if (courses.docs.isEmpty) {
    // await loadCollection(coursesInitJson, courses);
    await MiniApp.cloudStorage.setItem('Courses', coursesInitJson);
  }
  if (lessons.docs.isEmpty) {
    await MiniApp.cloudStorage.setItem('Lessons', lessonsInitJson);
    // await lessons.loadCollection();
    // await loadCollection(lessonsInitJson, lessons);
  }
}

Future<void> loadCollection(
    String serializedString, MiniAppCollection collection) async {
  List<Map<String, dynamic>> docsList;
  try {
    docsList = (jsonDecode(serializedString) as List<dynamic>)
        .map((docObject) => docObject as Map<String, dynamic>)
        .toList();
  } on Exception {
    debugPrint('Deserialization failed!');
    return;
  }

  for (final docObject in docsList) {
    final newDocId = docObject['id'] as String?;
    final newDocData = docObject['data'] as Map<String, dynamic>?;
    if (newDocId == null || newDocData == null) continue;
    final doc = collection.newDoc(id: newDocId)..parse(newDocData);
    collection.docs.add(doc);
    await collection.saveDoc(doc);
  }
}
