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
      appBar: AppBar(title: Center(child: Text('Add your education')),),
      body: SizedBox(
        height:MediaQuery.of(context).size.height ,
        width:MediaQuery.of(context).size.width ,
        child: ListView(
          children: [
            Form(key: formkey,
              child:Flexible(
                child: Column(
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: education,
                        decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Education'),
                        onTap: () {
                          DropdownButton(
                            value: dropdownvalue,
                            icon: Icon(Icons.arrow_drop_down_outlined),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: university,
                          decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'University/College'),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: course,
                          decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Course'),
                          onTap: (){
                            DropdownButton(value: dropdownvalue,
                              icon: Icon(Icons.arrow_drop_down),
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
                    ),
                    Flexible(
                      child: Column(
                        children: [Text('Course_type'),
                          Flexible(
                            child: Row(
                              children: [
                                RadioListTile(title: Text('Full time'),value: 'Full time', groupValue:course_type, onChanged: (value){
                                  setState(() {
                                    course_type=value.toString();
                                  });
                                }),
                                RadioListTile(title: Text('Part time'),value: 'Part time', groupValue:course_type, onChanged: (value){
                                  setState(() {
                                    course_type=value.toString();
                                  });
                                }),
                                RadioListTile(title: Text('Distance'),value: 'Distance', groupValue:course_type, onChanged: (value){
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
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: course_duration_start,
                          decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Start date'),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2050));
                            if (date!=null){
                              print(date);
                            }
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: course_duration_end,
                          decoration: InputDecoration(border: OutlineInputBorder(),hintText:'End date'),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2050));
                            if (date!=null){
                              print(date);
                            }
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed:(){} , child: Text('Cancel')),
                          ElevatedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return Add_resume();
                            }));
                          } , child: Text('Submit')),
                        ],
                      ),
                    ),
                  ],
                ),
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
