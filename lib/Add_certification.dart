import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Add_Certification extends StatefulWidget {
  const Add_Certification({super.key});

  @override
  State<Add_Certification> createState() => _Add_CertificationState();
}

class _Add_CertificationState extends State<Add_Certification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Certification'),),
      body:Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Flexible(
          flex: 2,
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    DottedBorder(
                      color: Colors.orange,
                      radius: const Radius.circular(20),
                      strokeWidth: 1,
                      child: Center(
                        child: Container(height: 200,width: 400,
                          child: TextButton(onPressed:(){
                          } ,child: const Center(child: Text('Add Certification'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: ElevatedButton(onPressed:(){} , child:const Text('Submit') ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
