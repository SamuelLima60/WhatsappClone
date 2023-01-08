import 'package:flutter/material.dart';
import 'package:whatsappclone/views/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsappClone',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white54,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white54),
        ),
      ),
      home: const HomePageView(),
    );
  }
}
