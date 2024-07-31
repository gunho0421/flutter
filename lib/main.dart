import 'package:app/form_success_page.dart';
import 'package:flutter/material.dart';

import 'form_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/success': (context) => SuccessPage(),
      },
      // home: const MyHomePage()
    );
  }
}

