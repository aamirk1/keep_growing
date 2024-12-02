import 'package:flutter/material.dart';
import 'package:keep_growing/database.dart';
import 'package:keep_growing/view/carousel_screens/carousel.dart';

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
      title: 'Keep Growing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final database = SqlDatabase();

  @override
  void initState() {
    database.createDatabase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return const MututalFunds();
    // return const FilterScreen();
    return const CaroselScreen();
  }
}
