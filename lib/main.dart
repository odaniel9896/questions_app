import 'package:flutter/material.dart';
import 'package:questions_app/ui/pages/details/details_page.dart';

import 'ui/pages/home/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/details",
      routes: {
        "/home": (context) => const HomePage(),
        "/details": (context) => const DetailsPage()
      },
    );
  }
}
