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
        appBar: AppBar(title: const Center(child: Text('Add Education')),),
        body:Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [
                DottedBorder(
                  color: Colors.orange,
                  radius: const Radius.circular(20),
                  strokeWidth: 1,
                  child: const SizedBox(height: 100,width: 200,child: Center(child: Text('Add Education'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const AddEducationDetails();
                    }));
                  } , child:const Icon(Icons.arrow_right_alt_sharp) ),
                )
              ],
            ),
          ),
        )


    );
  }
}
