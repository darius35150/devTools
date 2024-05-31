import 'package:dev_tools/web_files/array_counter/lib/com/pages/counter_home_web.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const ArrayCounterWebApp());
}

class ArrayCounterWebApp extends StatelessWidget {
  const ArrayCounterWebApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev Tools - Array Counter',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 60, 62, 63),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterHomeWeb(),
    );
  }
}
  
