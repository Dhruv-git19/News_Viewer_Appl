# Flutter News App

A lightweight Flutter application that displays real-time news articles using the [NewsAPI](https://newsapi.org/). The app follows the BLoC (Business Logic Component) pattern for clean and scalable state management.

---

## Features

- Fetches news articles from various categories
- BLoC pattern for structured state handling
- Open articles in the device browser
- Pull-to-refresh support
- Error handling for API and network failures

---

## Getting Started

### Prerequisites

Ensure the following tools are installed on your system:

- Flutter SDK (recommended: 3.10.0+)
- Dart SDK
- Android Studio or Visual Studio Code
- NewsAPI API key ([https://newsapi.org/](https://newsapi.org/))

---

### Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/flutter-news-app.git
   cd flutter-news-app


2. **Install the dependencies**:
   ```bash
   flutter pub get


3. **Api key**:
   -already provided in the source code, directly run the app


4. **Run the App**:
   ```bash
   flutter run


## API Key Usage Instructions
Register for an API key at newsapi.org
Do not expose your key in public repositories
For production, store the key securely (e.g., using environment variables or secure storage)

**In this source code its already provided, no need to create your own**



## Bonus (Optional) Features
-category filter (e.g., Business, Sports, Tech) using tabs or dropdown. 
-Pull-to-refresh using RefreshIndicator 
-Shimmer loading effect (using shimmer package)
