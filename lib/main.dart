import 'package:flutter/material.dart';

void main() {
  runApp(const AllBoldBlackApp());
}

class AllBoldBlackApp extends StatelessWidget {
  const AllBoldBlackApp({super.key});

  @override
  Widget build(BuildContext context) {
    // We define a universal text theme where everything is black and bold
    final TextStyle boldBlackStyle = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    return MaterialApp(
      title: 'Bold Black App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // Enforces bold black text for standard Material components
        textTheme: TextTheme(
          displayLarge: boldBlackStyle,
          displayMedium: boldBlackStyle,
          displaySmall: boldBlackStyle,
          headlineLarge: boldBlackStyle,
          headlineMedium: boldBlackStyle,
          headlineSmall: boldBlackStyle,
          titleLarge: boldBlackStyle,
          titleMedium: boldBlackStyle,
          titleSmall: boldBlackStyle,
          bodyLarge: boldBlackStyle,
          bodyMedium: boldBlackStyle,
          bodySmall: boldBlackStyle,
          labelLarge: boldBlackStyle,
          labelMedium: boldBlackStyle,
          labelSmall: boldBlackStyle,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EARNING DASHBOARD'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('TOTAL REVENUE', style: TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            const Text('\$1,245.50', style: TextStyle(fontSize: 36)),
            const SizedBox(height: 24),
            const Text('MONETIZATION OPTIONS:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),

            // Example of a list item
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('1. PREMIUM SUBSCRIPTIONS'),
                Text('ACTIVE'),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('2. IN-APP ADVERTISEMENTS'),
                Text('READY'),
              ],
            ),
            const SizedBox(height: 32),

            // Example of a button with forced bold black text
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {},
                child: const Text('CASHOUT FUNDS'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
