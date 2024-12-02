import 'package:flutter/material.dart';
import 'package:keep_growing/database.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({super.key});

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  final database = SqlDatabase();

  @override
  void initState() {
    database.insertData().whenComplete(
      () {
        database.getDataById(1);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
