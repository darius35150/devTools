import 'package:dev_tools/ms_files/array_counter/lib/com/pages/counter_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ArrayCounterMSApp());
}

class ArrayCounterMSApp extends StatelessWidget {
  const ArrayCounterMSApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev Tools - Array Counter',
      initialRoute: "/counter",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 60, 62, 63),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterHome(),
    );
  }
}
  
