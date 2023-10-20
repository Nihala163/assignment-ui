import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'add_education_detail.dart';

class Add_education extends StatefulWidget {
  const Add_education({super.key});

  @override
  State<Add_education> createState() => _Add_educationState();
}

class _Add_educationState extends State<Add_education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Add your Details')),),
        body:Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 400),
                  child: Row(
                    children: [
                      DottedBorder(
                        color: Colors.orange,
                        radius: Radius.circular(20),
                        strokeWidth: 1,
                        child: Container(height: 100,width: 200,child: Center(child: Text('Add Education'))),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Add_education_deatils();
                  }));
                } , child:Icon(Icons.arrow_right_alt_sharp) ),
              )
            ],
          ),
        )


    );
  }
}