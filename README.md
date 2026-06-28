# Bold Black App

A cross-platform Flutter app (iOS & Android) where every piece of text automatically uses a **bold, black** typography style. The app also features an Earning Dashboard to help track monetization.

## Getting Started

### Prerequisites

1. **Install Flutter** – Download and install from [flutter.dev](https://flutter.dev).

### Running the App

1. Clone this repository.
2. From the project root, install dependencies:
   ```bash
   flutter pub get
   ```
3. Connect your phone via USB (with Developer Mode enabled) and run:
   ```bash
   flutter run
   ```

## How It Works

A global `ThemeData` is configured in `lib/main.dart` so that every `TextTheme` slot (`displayLarge`, `bodyMedium`, etc.) inherits `FontWeight.bold` and `Colors.black`. Any `Text` widget that doesn't override these properties will automatically render in bold black.

## Monetization Strategies

- **Google AdMob (Ads):** Add the [`google_mobile_ads`](https://pub.dev/packages/google_mobile_ads) package to display banner or interstitial ads. Revenue is earned from ad impressions and clicks.
- **In-App Purchases / Subscriptions:** Use the [`in_app_purchase`](https://pub.dev/packages/in_app_purchase) package to lock premium features behind a paywall.
- **Paid App:** Charge a one-time download fee (e.g. $0.99) via the Apple App Store or Google Play Store.
