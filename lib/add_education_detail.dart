// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'add_resume.dart';

class Add_education_deatils extends StatefulWidget {
  const Add_education_deatils({super.key});

  @override
  State<Add_education_deatils> createState() => _Add_education_deatilsState();
}

class _Add_education_deatilsState extends State<Add_education_deatils> {
  final formkey=GlobalKey<FormState>();
  var education=TextEditingController();
  var university=TextEditingController();
  var course=TextEditingController();
  var course_duration_start=TextEditingController();
  var course_duration_end=TextEditingController();

  String dropdownvalue='SElect';
  var education1=[
    'SSLC',
    'Higher Secondary',
    'Graduate'
  ];
  String dropdownvalue1='Select';
  var course1=[
    'Diploma',
    'PG',
    'MG',
    'Other'
  ];

  String course_type='Full time';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Add your education')),),
      body: ListView(
        children: [
          Flexible(flex: 3,
            child: Form(key: formkey,
              child:Flexible(flex: 2,
                child: Column(
                  children: [
                    TextFormField(
                      controller: education,
                      decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Education'),
                      onTap: () {
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          items: education1.map((String education){
                            return DropdownMenuItem(child: Text(education),value: education,);
                          }).toList(),
                          onChanged: (String?newValue){
                            setState(() {
                              dropdownvalue=newValue!;
                            });
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: university,
                        decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'University/College'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: course,
                        decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Course'),
                        onTap: (){
                          DropdownButton(value: dropdownvalue,
                            icon: const Icon(Icons.arrow_drop_down),
                            items: course1.map((String course){
                              return DropdownMenuItem(
                                value: course,child: Text(course),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue=newValue!;
                              });
                            },
                          );
                        },
                      ),
                    ),
                    Flexible(flex: 2,
                      child: Column(
                        children: [const Text('Course_type'),
                          Flexible(
                            child: Row(
                              children: [
                                RadioListTile(title: const Text('Full time'),value: 'Full time', groupValue:course_type, onChanged: (value){
                                  setState(() {
                                    course_type=value.toString();
                                  });
                                }),
                                RadioListTile(title: const Text('Part time'),value: 'Part time', groupValue:course_type, onChanged: (value){
                                  setState(() {
                                    course_type=value.toString();
                                  });
                                }),
                                RadioListTile(title: const Text('Distance'),value: 'Distance', groupValue:course_type, onChanged: (value){
                                  setState(() {
                                    course_type=value.toString();
                                  });
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: course_duration_start,
                        decoration: const InputDecoration(border: OutlineInputBorder(),hintText:'Start date'),
                        onTap: ()async {
                          var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2050));
                          if (date!=null){
                            print(date);
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: course_duration_end,
                        decoration: const InputDecoration(border: OutlineInputBorder(),hintText:'End date'),
                        onTap: ()async {
                          var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2050));
                          if (date!=null){
                            print(date);
                          }
                        },
                      ),
                    ),
                    Flexible(flex: 1,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed:(){} , child: const Text('Cancel'),
                              style: ElevatedButton.styleFrom(backgroundColor: Color(0XFFFFFFFF))),
                          ElevatedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Add_resume();
                            }));
                          } , child: const Text('Submit')),
                        ],
                      ),
                    ),
                  ],
                ),
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}
