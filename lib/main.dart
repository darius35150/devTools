import 'dart:io';

import 'package:dev_tools/ms_files/app_run/app_runner.dart';
import 'package:dev_tools/ms_files/converter/lib/converter_app.dart';
import 'package:dev_tools/ms_files/todo/lib/main/notes_list_home.dart';
import 'package:dev_tools/web_files/converter_web/lib/converter_app_web.dart';
import 'package:dev_tools/web_files/home_web/home_web.dart';
import 'package:dev_tools/web_files/todo_web/lib/main/notes_list_home_web.dart';

import 'ms_files/home/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:window_size/window_size.dart';

void main() async {
  bool isWindows;
  try {
    isWindows = Platform.isWindows ? true : false;
  } catch (e) {
    isWindows = false;
  }
  await Hive.initFlutter();

  await Hive.openBox("items");

  if (isWindows) {
    setWindowTitle("Dev Tools");
    runApp(const DevToolsAppWindows());
    DesktopWindow.setFullScreen(false);
    await DesktopWindow.setWindowSize(const Size(1000, 850));
  } else {
    runApp(const DevToolsAppWeb());
  }
}

class DevToolsAppWindows extends StatelessWidget {
  const DevToolsAppWindows({super.key});

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
      routes: {
        "/home": (context) => const Home(),
        "/notes":(context) => NotesListHome(),
        "/converter":(context) => const ConverterApp(),
        "/apps":(context) => const AppRunner()
      },
    );
  }
}

class DevToolsAppWeb extends StatelessWidget {
  const DevToolsAppWeb({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev Tools',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeWeb(),
      routes: {
        "/webhome": (context) => const HomeWeb(),
        "/webnotes":(context) => NotesListHomeWeb(),
        "/webconverter":(context) => const ConverterAppWeb(),
      },
      initialRoute: "/webhome",
    );
  }
}
