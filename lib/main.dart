import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/screens/add_tasks.dart';
import 'package:flutter_golang_yt/screens/all_tasks.dart';
import 'package:flutter_golang_yt/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const AllTasks(),
    );
  }
}

