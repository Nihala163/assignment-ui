import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'add_education_detail.dart';

class AddingExperiance extends StatefulWidget {
  const AddingExperiance({super.key});

  @override
  State<AddingExperiance> createState() => _AddingExperianceState();
}

class _AddingExperianceState extends State<AddingExperiance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Add Experiance Deatail')),),
        body:Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [

              ],
            ),
          ),
        )


    );
  }
}
