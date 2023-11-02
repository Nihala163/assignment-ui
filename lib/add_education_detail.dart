// ignore_for_file: non_constant_identifier_names


import 'package:assignment_ui/add_employment.dart';
import 'package:assignment_ui/add_profile.dart';
import 'package:assignment_ui/home.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class AddEducationDetails extends StatefulWidget {
  const AddEducationDetails({super.key});

  @override
  State<AddEducationDetails> createState() => _AddEducationDetailsState();
}

class _AddEducationDetailsState extends State<AddEducationDetails> {
  final formkey=GlobalKey<FormState>();
  var university=TextEditingController();
  var courseDurationStart=TextEditingController();
  var courseDurationEnd=TextEditingController();

  String dropdownvalue='SSLC';
  var education=[
    'SSLC',
    'Higher Secondary',
    'Graduate'
  ];
  String dropdownvalue1='Diploma';
  var course=[
    'Diploma',
    'PG',
    'Other',
  ];

  String courseType='Full time';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Add Education')),
        foregroundColor: Colors.black,
        backgroundColor:Colors.white,
      actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return const Home();
        }));
      }, icon: const CircleAvatar(child: Icon(Icons.close)))]),
      
      body: Form(key: formkey,
        child:Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 330),
              child: Text('Education',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: const InputDecoration(hintText:'Education',border: OutlineInputBorder()),
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items:education.map((String education){
                    return DropdownMenuItem(value: education,
                        child: Text(education),);
                  }).toList(),
                  onChanged:(String?newValue){
                    setState(() {
                      dropdownvalue=newValue!;
                    });
                  }
                  ),
            ),

            const Padding(
              padding: EdgeInsets.only(right: 280),
              child: Text('University / College',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: university,
                decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'University / College'),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(right: 350),
              child: Text('Course',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: DropdownButtonFormField(
                 decoration: const InputDecoration(hintText:'Course',border: OutlineInputBorder() ),
                 value: dropdownvalue1,
                 icon: const Icon(Icons.keyboard_arrow_down),
                 items:course.map((String  course){
                   return DropdownMenuItem(
                     value: course,
                       child: Text(course),);
                 }).toList() ,
                 onChanged: (String?newObject){
                   setState(() {
                     dropdownvalue1=newObject!;
                   });
             }),
           ),
           const Padding(
             padding: EdgeInsets.only(right: 320),
             child: Text('Course Type',style: TextStyle(fontWeight: FontWeight.bold),),
           ),
           Row(
             children: [
               Expanded(
                 child: ListTile(
                   title: const Text('Full time'),
                   leading: Radio(
                     value: 'Full time',
                     groupValue: courseType,
                     onChanged: (value){
                       setState(() {
                         courseType=value.toString();
                       });
                     },
                   ),
                 ),
               ),
               Expanded(
                 child: ListTile(
                   title: const Text('Part time'),
                   leading: Radio(
                     value: 'Part time',
                     groupValue: courseType,
                     onChanged: (value){
                       setState(() {
                         courseType=value.toString();
                       });
                     },
                   ),
                 ),
               ),
               Expanded(
                 child: ListTile(
                   title: const Text('Distance'),
                   leading: Radio(
                     value: 'Distance',
                     groupValue: courseType,
                     onChanged: (value){
                       setState(() {
                         courseType=value.toString();
                       });
                     },
                   ),
                 ),
               ),
             ],
           ),
            const Padding(
              padding: EdgeInsets.only(right: 290),
              child: Text('Course Duration',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller:courseDurationStart,
              decoration: const InputDecoration(
                  icon:Icon(Icons.calendar_month_outlined),
              hintText: 'Start date',
                border: OutlineInputBorder(),
              ),
                readOnly: true,
                onTap: ()async{
                  var pickeddate=await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(2050)
                  );
                  if(pickeddate!=null){
                    print(pickeddate);
                    print(DateFormat('DD-MM-YY').format(pickeddate));
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller:courseDurationEnd,
                decoration: const InputDecoration(
                  icon:Icon(Icons.calendar_month_outlined),
                  hintText: 'End date',
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: ()async{
                  var pickeddate=await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(2050)
                  );
                  if(pickeddate!=null){
                    print(pickeddate);
                    print(DateFormat('DD-MM-YY').format(pickeddate));
                  }
                },
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return const Add_Details();
                    }));
                  },
                      style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.orange,
                  ),
                      child: const Text('Cancel'))
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return const Add_employment();
                    }));
                  },
                    style:ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ), child: const Text('Submit'),
                ),
                ),
              ],
            )
          ]
            ),

    ),
    );
  }
}
