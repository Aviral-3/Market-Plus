# Market Plus

This Flutter app fetches and displays the latest finance news from a given API. It's designed to demonstrate how to make network requests, parse JSON data, and display it in a user-friendly manner using a list of cards.

## Features

- Fetch data from an API endpoint asynchronously.
- Display news articles in a scrollable list.
- Basic error handling for failed API requests.
- Pull-to-refresh functionality to reload news articles.

## Getting Started

To run this project, follow these steps:

1. **Clone the repository:**

```bash
git clone https://github.com/Aviral-3/market-plusgit
cd market-plus
```

2. Install dependencies:
```bash
flutter pub get
```
3. Run the app:
   Connect your device or start your emulator, then execute:
```bash
flutter run
```

## Prerequisites
Ensure you have the following installed:

a. Flutter SDK
b. Dart SDK
c. An IDE (Android Studio, VS Code, etc.)

## Configuration
Before running the app, you need to configure the API key for fetching news:

a. Obtain an API key from [API Provider's Name].
b. Create a .env file in the root directory and add your API key:

```bash
RapidAPI-Key': '15bc621938mshf3f04d07f80aba9p126baajsnab75feb5d16a'
```

## Structure
The project follows the following directory structure:

```bash
lib/
 models/ - Defines the data model for a news article.
 services/ - Handles API requests and data fetching.
 views/ - Contains the UI components of the app.
main.dart - The entry point of the application.
test/ - Contains unit and widget tests.
```


