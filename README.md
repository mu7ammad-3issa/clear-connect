# ClearConnect - Flutter Chat Application

ClearConnect is a mobile application built with Flutter and Firebase, designed for real-time communication. It allows users to register, log in, and exchange messages seamlessly, with a persistent chat history.

##  Screenshots

### Login Screen
![ClearConnect Login Screen](https://github.com/user-attachments/assets/704231ed-1858-43b4-b9fd-e3084d348c77)
*Users can securely log in using their email and password.*

---

### Register Screen
![ClearConnect Register Screen](https://github.com/user-attachments/assets/f44e74be-4ac4-4010-9f50-03aa9b1f4d25)
*New users can easily create an account to start connecting.*

---

### Chat Screen
![ClearConnect Chat Interface](https://github.com/user-attachments/assets/25d7daa8-2f57-4157-8f60-8ace1c1c478e)
*Real-time messaging with a clean interface, distinguishing between sent and received messages.*

---

## Features

* **User Authentication**: Secure email and password registration and login functionality powered by Firebase Authentication.
* **Real-time Messaging**: Instantaneous message exchange between users.
* **Persistent Chat History**: Messages are stored in Cloud Firestore, ensuring users can access their conversation history.
* **User-Friendly Interface**: Intuitive UI with distinct chat bubbles for the sender and receiver.
* **Loading Indicators**: Visual feedback during asynchronous operations like login/registration.
* **Custom UI Components**: Reusable custom widgets for text fields, buttons, and chat bubbles.

## Technology Stack

* **Framework**: Flutter
* **Programming Language**: Dart
* **Backend & Database**:
    * Firebase Authentication
    * Cloud Firestore
    * Firebase Core
* **State Management**: Flutter Bloc (AuthCubit, ChatCubit, AuthBloc)
* **UI Libraries**:
    * Material Design
    * `modal_progress_hud_nsn` for loading indicators
* **Development Tools**: VS Code, Git, GitHub
* **Platform Support**: Android, iOS (and potentially Web, Windows, macOS, Linux as per Flutter's cross-platform capabilities, though primary focus appears to be mobile).

## Project Structure

The project follows a standard Flutter project structure:

```
connectsphere/
├── android/                      # Android specific files
├── ios/                          # iOS specific files
├── lib/                          # Main Dart application code
│   ├── main.dart                 # Application entry point
│   ├── constants.dart            # App-wide constants
│   ├── firebase_options.dart     # Firebase project configuration
│   ├── helper/                   # Helper utilities (e.g., show_snack_bar.dart)
│   ├── models/                   # Data models (e.g., message.dart)
│   ├── pages/                    # Application screens/pages (login, register, chat)
│   │   ├── blocs/                # BLoC pattern components for authentication
│   │   └── cubits/               # Cubit components for authentication and chat logic
│   ├── widgets/                  # Reusable custom widgets
│   └── simple_bloc_observer.dart # Custom BLoC observer
├── assets/                       # Static assets like images and fonts
│   ├── images/scholar.png        # App logo/icon
│   └── fonts/Pacifico-Regular.ttf # Custom font
├── web/                          # Web specific files
├── windows/                      # Windows specific files
├── macos/                        # macOS specific files
├── linux/                        # Linux specific files
├── pubspec.yaml                  # Project dependencies and metadata
└── README.md                     # This file
```

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

* Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
* A Firebase project.

### Setup

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/your_username/your_repository_name.git](https://github.com/your_username/your_repository_name.git)
    cd your_repository_name
    ```
2.  **Set up Firebase:**
    * Create a new Firebase project at [console.firebase.google.com](https://console.firebase.google.com/).
    * Enable **Authentication** (Email/Password sign-in method).
    * Set up **Cloud Firestore** (choose a region and set security rules, for development you can start with test mode rules).
    * **For Android:**
        * Register your Android app with your Firebase project.
        * Download the `google-services.json` file and place it in the `android/app/` directory.
    * **For iOS:**
        * Register your iOS app with your Firebase project.
        * Download the `GoogleService-Info.plist` file and place it in the `ios/Runner/` directory (you might need to open the iOS module in Xcode to add it correctly).
    * Alternatively, you can configure your Firebase settings directly in `lib/firebase_options.dart` using the FlutterFire CLI or by manually updating the existing options with your project's credentials. The project name initialized in `main.dart` is 'chat-app-b8531'.

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

### Running the Application

1.  Ensure you have a connected device (emulator or physical device).
2.  Run the application:
    ```sh
    flutter run
    ```
