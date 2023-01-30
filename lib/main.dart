import 'package:flutter/material.dart';
import 'package:uiclone/homepage/chatpage.dart';
import 'package:uiclone/homepage/homepage.dart';
import 'package:uiclone/homepage/settingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xff075e55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "SettingsPage": (context) => const SettingsPage(),
        "chatPage": (context) => const ChatPage(),
      },
    );
  }
}
