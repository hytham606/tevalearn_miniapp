// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'main.dart';

final staticCategories = [
  {
    'id': 'graphic',
    'Title': 'Graphic Design',
    'Description': 'description',
    'Image':
        'https://ouch-cdn2.icons8.com/oa5VWbZo4vRSCeBkK3iAuG64ryU-8IffsVR353aV24A/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMzMv/MGRhOGVmNzctNDk2/MC00Y2ZhLTk2ZmIt/NjUxMzYyMTdlNjE3/LnBuZw.png'
  },
  {
    'id': 'prog',
    'Title': 'Programming',
    'Description': 'description',
    'Image':
        'https://ouch-cdn2.icons8.com/qHCXPMf6QLQBWyk4w9p5TiuWdochpyGBJYraZUxQck0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODUz/Lzk4MDcxYzdjLTI3/MjEtNDAxZC04MjAz/LTU2ZWFjNTNjMDdl/Ny5wbmc.png'
  },
  {
    'id': 'marketing',
    'Title': 'Marketing',
    'Description': 'description',
    'Image':
        'https://ouch-cdn2.icons8.com/jSslwEaeuKxqh86NkKRuRJ9K-QgIs63Y37q6w6mxEsk/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjY1/L2YxZmI4Y2U1LTUy/OWMtNGY0ZS1iNTBh/LTgxZWUyMTIwMzU1/NC5wbmc.png'
  },
];

final staticCourses = [
  {
    "id": "5f6b3a80-f4d5-1d26-9997-6db5990387bf",
    "data": {
      "Course Title": "Photoshop for Beginners",
      "Instructor": "PiXimperfect",
      "Course Image":
          "https://ouch-cdn2.icons8.com/_C0dvTlmmBkErBymsxV7p7tMtXqk7g83zqjRFjm8ol8/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODgx/L2UyN2Y3YmRiLTdj/ODMtNDY3NS04YjVh/LTg1MDJmMTZlOTg0/My5wbmc.png",
      "Course Duration": "3 Hours",
      "Course Likes": "4",
      "Promoted": false,
      "Price": "Free",
      "Category": {
        "docId": "graphic",
        "label": "Graphic Design",
        "collectionPath": "Example Apps/Enablisty Job Listings/Category"
      }
    }
  },
  {
    "id": "d1445480-07f3-1d27-a661-c9bcb975c984",
    "data": {
      "Course Title": "Illustrator for Beginners",
      "Instructor": "Gareth David",
      "Course Image":
          "https://ouch-cdn2.icons8.com/hyIuv4PU5uE7yMQURdFq-jfII88z83J59Dl66z3ICOQ/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTU4/L2U5ODU2Yzk1LTQw/ODItNGVmNS1hMzNi/LWMzODQ3MjMxNWEy/Mi5wbmc.png",
      "Course Duration": "4 Hours",
      "Course Likes": "5",
      "Promoted": null,
      "Price": "12",
      "Category": {
        "docId": "graphic",
        "label": "Graphic Design",
        "collectionPath": "Example Apps/Enablisty Job Listings/Category"
      }
    }
  },
  {
    "id": "040ea280-0c63-1d27-a661-c9bcb975c984",
    "data": {
      "Course Title": "Python for Beginners",
      "Instructor": "Network Chuck",
      "Course Image":
          "https://ouch-cdn2.icons8.com/-lmpeZ9rEABImqUVvCTj28Y3PpT0B2vTyJzj1uoyc9U/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjg2/LzdmMWM2NmVmLWM5/MzUtNDZkNy1hMWMz/LTcwYWFmYzA2MzEy/Zi5wbmc.png",
      "Course Duration": "2 Hours",
      "Course Likes": "5",
      "Promoted": false,
      "Price": "Free",
      "Category": {
        "docId": "prog",
        "label": "Programming",
        "collectionPath": "Example Apps/Enablisty Job Listings/Category"
      }
    }
  },
  {
    "id": "b7298980-1423-1d27-ab9d-83c937e21662",
    "data": {
      "Course Title": "Facebook Ads for Beginners",
      "Instructor": "Facebook Ads Tutorial for Beginners",
      "Course Image":
          "https://ouch-cdn2.icons8.com/ccGgpyuvuK6okwCCpER7NzDs69YzfH_wC6Evz9z4Wp0/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDAy/LzNlMGYzMjg4LTc3/NjAtNGZiYi05MDUx/LTQxZjQ1ODEyNDE4/MS5wbmc.png",
      "Course Duration": "30 Minutes",
      "Course Likes": "20",
      "Promoted": false,
      "Price": "Free",
      "Category": {
        "docId": "marketing",
        "label": "Marketing",
        "collectionPath": "Example Apps/Enablisty Job Listings/Category"
      }
    }
  }
];

final staticLessons = [
  {
    "id": "53421580-be72-1d2e-b901-f75bc679137d",
    "data": {
      "Lesson Name": "PS Lesson 1",
      "Lesson Duration": "45 Minutes",
      "Lesson Video": "xTzvQkOll2U",
      "Lesson Description":
          "Whether you are starting from scratch or want to build a strong and solid foundation, this is the lesson to help you every step of the way. ",
      "Lesson Resources":
          "https://www.youtube.com/playlist?list=PLLlSBGLVsEPIFGSGw2zJ2K43V5vxMMMTE",
      "Lesson Transcript": [
        {
          "insert":
              "00:00\nby the end of this video Photoshop will never look intimidating to you and if it does I'm gonna give you a hundred percent money back guarantee please refer to these chapters to skip to any section of the video\n"
        }
      ],
      "Course": {
        "docId": "5f6b3a80-f4d5-1d26-9997-6db5990387bf",
        "label": "Photoshop for Beginners",
        "collectionPath": "Example Apps/Enablisty Job Listings/Courses"
      }
    }
  },
  {
    "id": "e3906100-bf2b-1d2e-b901-f75bc679137d",
    "data": {
      "Lesson Name": "PS Lesson 2",
      "Lesson Duration": "48 Minutes",
      "Lesson Video": "unCS9syPJjg",
      "Course": {}
    }
  },
  {
    "id": "69e9a600-c0d8-1d2e-b901-f75bc679137d",
    "data": {
      "Lesson Name": "Illustrator Lesson 1",
      "Lesson Duration": "6 Minutes",
      "Lesson Video": "IBouhf4seWQ",
      "Lesson Description":
          "On this course I will be introducing you to the program and covering some essential practise exercises. ",
      "Lesson Resources":
          "https://www.youtube.com/playlist?list=PLYfCBK8IplO4X-jM1Rp43wAIdpP2XNGwP",
      "Lesson Transcript": [
        {
          "insert":
              "00:01\n[ Music ] >> Hello and welcome to the complete beginners guide to Adobe Illustrator, brought to you by tastytuts.com. This is a course created for beginners to Adobe Illustrator.\n"
        }
      ],
      "Course": {
        "docId": "d1445480-07f3-1d27-a661-c9bcb975c984",
        "label": "Illustrator for Beginners ",
        "collectionPath": "Example Apps/Enablisty Job Listings/Courses"
      }
    }
  },
  {
    "id": "e5c41b00-c1ca-1d2e-b901-f75bc679137d",
    "data": {
      "Lesson Name": "Python Lesson 1",
      "Lesson Duration": "17 Minutes",
      "Lesson Video": "mRMmlo_Uqcs",
      "Lesson Description": "Introduction to learn python programming.",
      "Lesson Resources":
          "https://www.youtube.com/playlist?list=PLIhvC56v63ILPDA2DQBv0IKzqsWTZxCkp",
      "Lesson Transcript": [
        {
          "insert":
              "00:00\nYou need to learn Python right now. Hold up. Why? What, why do you need to learn Python right now? \n"
        }
      ],
      "Course": {
        "docId": "040ea280-0c63-1d27-a661-c9bcb975c984",
        "label": "Python Introduction",
        "collectionPath": "Example Apps/Enablisty Job Listings/Courses"
      }
    }
  },
  {
    "id": "24d09a00-c2b9-1d2e-b901-f75bc679137d",
    "data": {
      "Lesson Name": "FB Ads Lesson",
      "Lesson Duration": "30 Minutes",
      "Lesson Video": "Dymukpfbg4A",
      "Lesson Description":
          "Learn how to setup a profitable Facebook Ad from scratch for beginners, business owners and entrepreneurs in 2023 within 30 minutes.",
      "Lesson Resources": "-",
      "Lesson Transcript": [
        {
          "insert":
              "Learn how to setup a profitable Facebook Ad from scratch for beginners, business owners and entrepreneurs in 2023 within 30 minutes.\n"
        }
      ],
      "Course": {
        "docId": "b7298980-1423-1d27-ab9d-83c937e21662",
        "label": "Facebook Ads for Beginners",
        "collectionPath": "Example Apps/Enablisty Job Listings/Courses"
      }
    }
  }
];

Future<void> testAdd() async {
  await categories.loadCollection();
  staticCategories.forEach((category) {
    final newDocId = category['id'] as String;
    if (!categories.docs.any((element) => element.id == newDocId)) {
      categories.docs.add(categories.newDoc(id: newDocId, source: category));
    }
  });
  await categories.saveCollection();

  await courses.loadCollection();
  staticCourses.forEach((course) {
    final newDocId = course['id'] as String;
    if (!courses.docs.any((element) => element.id == newDocId)) {
      courses.docs.add(courses.newDoc(
          id: newDocId, source: course['data'] as Map<String, dynamic>));
    }
  });
  await courses.saveCollection();

  await lessons.loadCollection();
  staticLessons.forEach((lesson) {
    final newDocId = lesson['id'] as String;
    if (!lessons.docs.any((element) => element.id == newDocId)) {
      lessons.docs.add(lessons.newDoc(
          id: newDocId, source: lesson['data'] as Map<String, dynamic>));
    }
  });
  await lessons.saveCollection();
}
