import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'add_education.dart';

class Add_Employment_details extends StatefulWidget {
  const Add_Employment_details({super.key});

  @override
  State<Add_Employment_details> createState() => _Add_Employment_detailsState();
}

class _Add_Employment_detailsState extends State<Add_Employment_details> {
  final formkey=GlobalKey<FormState>();
  var company_name=TextEditingController();
  var company_location=TextEditingController();
  var company_department=TextEditingController();
  var work_from_year=TextEditingController();
  var work_from_month=TextEditingController();
  var work_till_year=TextEditingController();
  var work_till_month=TextEditingController();

  String fresher='Yes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Add employment'),),
        body: SingleChildScrollView(
          child: Form(
            key:formkey ,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Are you a Fresher'),
                    Flexible(
                      child: RadioListTile(title: Text('Yes'),
                        value: 'yes',
                        groupValue: fresher,
                        onChanged: (value){
                          setState(() {
                            fresher=value.toString();
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: RadioListTile(title: Text('No'),
                        value: 'no',
                        groupValue: fresher,
                        onChanged: (value){
                          setState(() {
                            fresher=value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TextFormField(
                      controller: company_name,
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter company name'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TextFormField(
                      controller: company_location,
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter company location'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TextFormField(
                      controller: company_department,
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter company department'),
                    ),
                  ),
                ),
                Row(
                  children: [Text('Work From'),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_from_year,
                          decoration: InputDecoration(border:OutlineInputBorder (),hintText: 'Year',icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(240));
                            if (date!=null){
                              print(DateFormat('YY').format(date!));
                            }
                          },

                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_from_month,
                          decoration: InputDecoration(border:OutlineInputBorder (),hintText: 'Month',icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(01), lastDate: DateTime(31));
                            if (date!=null){
                              print(DateFormat('MM').format(date!));
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [Text('Work Till'),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_till_year,
                          decoration: InputDecoration(border:OutlineInputBorder (),hintText: 'Year',icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2040));
                            if (date!=null){
                              print(DateFormat('YY').format(date!));
                            }
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_till_month,
                          decoration: InputDecoration(border:OutlineInputBorder (),hintText: 'Month',icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(01), lastDate: DateTime(31));
                            if (date!=null){
                              print(DateFormat('MM').format(date!));
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text('Cancel')),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return Add_education();
                        }));
                      }, child: Text('Submit')),
                    ],
                  ),
                ),
              ],
            ),

          ),
        )
    );
  }
}
