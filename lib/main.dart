import 'dart:io';

import './home/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:desktop_window/desktop_window.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox("items");

  runApp(const DevToolsApp());
  
    if (Platform.isWindows) {
    DesktopWindow.setFullScreen(false);
    await DesktopWindow.setWindowSize(const Size(1056, 850));
  }
}

class DevToolsApp extends StatelessWidget {
  const DevToolsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      title: 'Dev Tools',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
