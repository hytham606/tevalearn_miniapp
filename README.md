# 📚 TevaLearn: LMS Courses Telegram MiniApp

![Flutter Version](https://img.shields.io/badge/Flutter-v2.5.3-blue)
![License](https://img.shields.io/badge/License-MIT-green)
![Firebase](https://img.shields.io/badge/Firebase-Hosting-orange)
![Telegram API](https://img.shields.io/badge/Telegram-API-blue)

Welcome to TevaLearn, an inclusive Learning Management System (LMS) designed as a Telegram Mini App. Our mission is to bridge the gap between content creators and their audiences on Telegram, with a keen focus on ensuring accessibility for individuals with disabilities. This initiative aligns with [Assisteva.com's](https://assisteva.com) commitment to inclusive solutions.

## 📌 Table of Contents

- [Demo](#-demo)
- [Introduction](#-introduction)
- [Features](#-features)
- [User Roles](#-user-roles)
- [Motivation](#-motivation)
- [Setup Guide](#-setup-guide)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Discussion](#-discussion)
- [Potential Errors and Exceptions](#-potential-errors-and-exceptions)
- [Roadmap](#-roadmap)
- [Contributing](#-contributing)
- [License](#-license)

## 🎥 Demo

### App Demo

[![TevaLearn App Demo](http://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](http://www.youtube.com/watch?v=YOUR_VIDEO_ID)

### Telegram Mini App

Access the live Telegram Mini App [here](https://t.me/TevaLearnBot/LMS).

## 🌟 Introduction

TevaLearn aims to revolutionize the way content creators share their courses on Telegram. With a focus on inclusivity, it ensures that learning is accessible to everyone, including those with disabilities.

## 🚀 Features

1. **Explore**: Navigate through various courses and lessons.
2. **Watch Lessons**: View lessons within courses.
3. **Favorites**: Add courses to your favorite list for easy access.
4. **Admin Mode**: Special access for content creators to manage content.
5. **Telegram API Integration**: Connect user data like First Name, Username.
6. **Bot Notifications**: Receive notifications upon lesson completion or when favoriting a course. *(Under Development)*

## 👥 User Roles

### Learner

![Learner User Flow](https://i.ibb.co/zPFRn28/Teva-Learn-Courses-Telegram-Mini-App-Learner.gif)


- Explore and search for courses.
- Add courses to favorites.
- Play courses and access lessons within them.

### Admin (Content Creator)

![Admin User Flow](https://i.ibb.co/qyngM9r/Teva-Learn-Courses-Telegram-Mini-App-Admin.gif)


- Add, edit, and manage categories.
- Add, edit, and manage courses.
- Add, edit, and manage lessons.

![Admin User Flow](https://i.ibb.co/qyngM9r/Teva-Learn-Courses-Telegram-Mini-App-Admin.gif)


## 💡 Motivation

In the digital age, learning should be accessible to everyone, everywhere. TevaLearn was born out of the desire to make quality education available on platforms like Telegram, ensuring that even those with disabilities have an equal opportunity to learn and grow.

## 🛠 Setup Guide

1. **Clone the Repository**: 
   ```bash
   git clone https://github.com/hytham606/tevalearn_miniapp.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd tevalearn_miniapp
   ```

3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the App**:
   ```bash
   flutter run
   ```

## 🖥 Tech Stack

- **Flutter**: The primary framework for building cross-platform apps.
- **Soar Quest Framework**: Enhances Flutter capabilities for specific use-cases.
- **Firebase**: Backend solution for hosting and database management.
- **Telegram API**: Integration for bot notifications and user data.

## 📂 Project Structure

- **`/lib`**: Contains the main Dart files for the project.
  - `backups.dart`: Handles data backups.
  - `course_select_screen.dart`: Screen for course selection.
  - `lms_category_screen.dart`: Screen for LMS category selection.
  - `lms_search_field.dart`: Implements the search functionality.
  - `lms_tabs_screen.dart`: Handles the tabbed navigation.
  - `main.dart`: The main entry point for the Flutter app.
  - `my_courses_screen.dart`: Screen for viewing user's courses.
  - `static_data.dart`: Contains static data definitions.

- **`/web`**: Contains web-specific assets and configurations.

## 💬 Discussion

We believe in the power of community and open discussion. If you have any ideas, feedback, or issues, please feel free to open an issue or contribute to the project.

## ⚠️ Potential Errors and Exceptions

- **Network Issues**: Ensure you have a stable internet connection.
- **Firebase Configuration**: Ensure Firebase is correctly set up and integrated.
- **Telegram API Limitations**: Some features might be limited based on Telegram's API constraints.

## 🗺 Roadmap

- **Bot Notifications**: Finalize the development of bot notifications for lesson completion and course favoriting.
- **Accessibility Features**: Implement additional features to enhance accessibility for users with disabilities.
- **Language Support**: Introduce multi-language support for global reach.

## 🤝 Contributing
Contributions are welcome!



## 📜 License

This project is licensed under the MIT License. See the [LICENSE](path_to_license.md) file for details.

---

This revised README incorporates the use of emojis, additional sections, and GitHub badges. Adjustments can be made based on specific requirements or further insights from the repository.