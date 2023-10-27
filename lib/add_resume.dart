import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Add_resume extends StatefulWidget {
  const Add_resume({super.key});

  @override
  State<Add_resume> createState() => _Add_resumeState();
}

class _Add_resumeState extends State<Add_resume> {
  var screensize;

  @override
  Widget build(BuildContext context) {
    screensize =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Add your Resume'),),
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
                          } ,child: const Center(child: Text('Add Resume'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: ElevatedButton(onPressed:(){} , child:const Text('Finish') ),
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
