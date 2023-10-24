import 'package:assignment_ui/add_about.dart';
import 'package:assignment_ui/add_education.dart';
import 'package:assignment_ui/add_education_detail.dart';
import 'package:assignment_ui/add_employment.dart';
import 'package:assignment_ui/add_employment_deatails.dart';
import 'package:assignment_ui/add_profile.dart';
import 'package:assignment_ui/filter.dart';
import 'package:assignment_ui/home.dart';
import 'package:assignment_ui/profile.dart';
import 'package:flutter/material.dart';

import 'add_language.dart';
import 'add_resume.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: Profile_view(),
    );
  }
}
