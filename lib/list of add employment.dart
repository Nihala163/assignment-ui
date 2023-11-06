import 'package:flutter/material.dart';

class AddEmploymentList extends StatefulWidget {
  const AddEmploymentList({super.key});

  @override
  State<AddEmploymentList> createState() => _AddEmploymentListState();
}

class _AddEmploymentListState extends State<AddEmploymentList> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(child: Text('Add your employment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
          ),


        ],
      ),
    );
  }
}
