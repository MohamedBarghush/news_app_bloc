# News App BLOC

This is a Flutter application that uses the BLoC (Business Logic Component) pattern to manage state. The app fetches and displays news articles in different categories such as Business, Sports, and Science.

## Project Structure

```
lib/
├── components/
│   └── components.dart
├── cubit/
│   ├── cubit.dart
│   └── states.dart
├── layouts/
│   └── news_layout.dart
├── main.dart
├── modules/
│   ├── business/
│   │   └── business_screen.dart
│   ├── science/
│   │   └── science_screen.dart
│   ├── settings_screen/
│   │   └── settings_screen.dart
│   └── sports/
│       └── sports_screen.dart
├── network/
│   ├── dio_helper.dart
│   └── local/
│       └── cache_helper.dart
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository:
    ```sh
    git clone <repository-url>
    ```
2. Navigate to the project directory:
    ```sh
    cd news_app_bloc
    ```
3. Install the dependencies:
    ```sh
    flutter pub get
    ```

### Running the App

To run the app on an emulator or a physical device, use the following command:
```sh
flutter run
```

## Key Components

### 

main.dart



The entry point of the application. It initializes the necessary services and runs the app.

### 

news_layout.dart



Defines the main layout of the application, including the [`AppBar`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A117%2C%22character%22%3A22%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition"), [`BottomNavigationBar`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A17%2C%22character%22%3A7%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A142%2C%22character%22%3A25%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition"), and the body which displays different screens based on the selected tab.

### 

cubit.dart



Contains the [`NewsCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A10%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A20%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A132%2C%22character%22%3A32%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fbusiness%2Fbusiness_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fscience%2Fscience_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fsports%2Fsports_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") and [`AppCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcomponents%2Fcomponents.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A57%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A134%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A17%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A110%2C%22character%22%3A35%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") classes which manage the state of the news articles and the app's theme mode respectively.

### 

states.dart



Defines the various states used by the [`NewsCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A10%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A20%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A132%2C%22character%22%3A32%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fbusiness%2Fbusiness_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fscience%2Fscience_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fsports%2Fsports_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") and [`AppCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcomponents%2Fcomponents.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A57%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A134%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A17%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A110%2C%22character%22%3A35%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition").

### 

components.dart



Contains reusable UI components, such as [`buildArticleItem`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcomponents%2Fcomponents.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A7%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fbusiness%2Fbusiness_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A18%2C%22character%22%3A45%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fscience%2Fscience_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A18%2C%22character%22%3A45%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fsports%2Fsports_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A18%2C%22character%22%3A45%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition"), which is used to display individual news articles.

### [`dio_helper.dart`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A7%2C%22character%22%3A38%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmain.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A4%2C%22character%22%3A38%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition")

Handles network requests using the Dio package.

### [`cache_helper.dart`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A8%2C%22character%22%3A44%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmain.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A44%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition")

Handles local storage using the shared_preferences package.

## Screens

### 

business_screen.dart



Displays a list of business news articles.

### 

sports_screen.dart



Displays a list of sports news articles.

### 

science_screen.dart



Displays a list of science news articles.

### [`settings_screen.dart`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A54%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition")

Contains settings for the application (currently not fully implemented).

## BLoC Pattern

The app uses the BLoC pattern to manage state. The [`NewsCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A10%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A20%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A132%2C%22character%22%3A32%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fbusiness%2Fbusiness_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fscience%2Fscience_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fsports%2Fsports_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") class fetches news articles from an API and updates the state accordingly. The [`AppCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcomponents%2Fcomponents.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A57%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A134%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A17%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A110%2C%22character%22%3A35%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") class manages the app's theme mode (light/dark).

### Example of BLoC Usage

In 

sports_screen.dart

, the [`BlocBuilder`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcomponents%2Fcomponents.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A45%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A25%2C%22character%22%3A13%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A132%2C%22character%22%3A20%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fbusiness%2Fbusiness_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A11%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fscience%2Fscience_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A11%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fsports%2Fsports_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A11%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") widget listens to the [`NewsCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A10%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A20%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A132%2C%22character%22%3A32%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fbusiness%2Fbusiness_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fscience%2Fscience_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmodules%2Fsports%2Fsports_screen.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A12%2C%22character%22%3A23%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") and rebuilds the UI based on the current state:

```dart
BlocBuilder<NewsCubit, NewsStates>(
  builder: (context, state) {
    return ConditionalBuilder(
      condition: NewsCubit.get(context).sports.isNotEmpty,
      builder: (context) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildArticleItem(NewsCubit.get(context).sports[index], context),
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          color: Colors.grey,
        ),
        itemCount: NewsCubit.get(context).sports.length,
      ),
      fallback: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  },
)
```

## API Integration

The app fetches news articles from an API using the Dio package. The API key and endpoint are defined in the [`dio_helper.dart`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A7%2C%22character%22%3A38%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fmain.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A4%2C%22character%22%3A38%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") file.

## Theme Management

The app supports light and dark themes. The theme mode is managed by the [`AppCubit`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcomponents%2Fcomponents.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A5%2C%22character%22%3A57%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Fcubit%2Fcubit.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A134%2C%22character%22%3A6%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A17%2C%22character%22%3A21%7D%7D%2C%7B%22uri%22%3A%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FFlutter%20Projects%2Fnews_app_bloc%2Flib%2Flayouts%2Fnews_layout.dart%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22pos%22%3A%7B%22line%22%3A110%2C%22character%22%3A35%7D%7D%5D%2C%227b83ad3c-e106-4176-ab6d-66e3b093c842%22%5D "Go to definition") class and is persisted using the shared_preferences package.

## Conclusion

This documentation provides an overview of the News App Bloc project. For more detailed information, refer to the code and comments within the project files.