import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'add_education.dart';

class AddEmploymentDetails extends StatefulWidget {
  const AddEmploymentDetails({super.key});

  @override
  State<AddEmploymentDetails> createState() => _AddEmploymentDetailsState();
}

class _AddEmploymentDetailsState extends State<AddEmploymentDetails> {
  final formkey=GlobalKey<FormState>();
  var companyName=TextEditingController();
  var workYearFrom=TextEditingController();
  var workMonthFrom=TextEditingController();
  var workYearTill=TextEditingController();
  var workMonthTill=TextEditingController();

  String fresher='Yes';

  String dropdownvalue='Kerala';
  var location=[
    'Arunachal_Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal_Pradesh',
    'Jammu and Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya_Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Orissa',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil_Nadu',
    'Tripura',
    'Uttarakhand',
    'Uttar_Pradesh',
    'West_Bengal',
    'Tamil_Nadu',
    'Tripura',
    'Chandigarh',
    'Delhi',
  ];
  String dropdownvalue1='Finance';
  var department=[
    'Finance',
    'Marketing',
    'Operation manager',
    'Human resource',
    'Information technology'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text('Add Employment')),
            foregroundColor: Colors.black,
            backgroundColor:Colors.white,
            actions: [
              IconButton(onPressed: (){}, icon: const CircleAvatar(child: Icon(Icons.close)))
            ]
        ),
        body: Form(
          key:formkey ,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 280),
                  child: Text('Are you a Fresher',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: [
                    Flexible(
                      child: RadioListTile(title: const Text('Yes'),
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
                      child: RadioListTile(title: const Text('No'),
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
                const Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: Text('Company Name',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: companyName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 280),
                  child: Text('Company Location',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField(
                      decoration: const InputDecoration(hintText:'Location',border: OutlineInputBorder()),
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items:location.map((String location){
                        return DropdownMenuItem(
                          value: location,
                          child: Text(location),);
                      }).toList(),
                      onChanged:(String?newValue){
                        setState(() {
                          dropdownvalue=newValue!;
                        });
                      }
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 310),
                  child: Text('Department',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField(
                      decoration: const InputDecoration(hintText:'Department',border: OutlineInputBorder()),
                      value: dropdownvalue1,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items:department.map((String department){
                        return DropdownMenuItem(
                          value: department,
                          child: Text(department),);
                      }).toList(),
                      onChanged:(String?newValue){
                        setState(() {
                          dropdownvalue1=newValue!;
                        });
                      }
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(right: 290),
                  child: Text('Working From',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
      Row(
        children: [const Text('Working From'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: workYearFrom,
                  decoration: const InputDecoration(
                      border:OutlineInputBorder (),
                      hintText: 'Year',
                      icon: Icon(Icons.calendar_month_rounded)
                  ),
                  onTap: ()async {
                    var date=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1990),
                        lastDate: DateTime(240));
                    if (date!=null){
                      print(DateFormat('YY').format(date));
                    }
                  },

                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: workMonthFrom,
                  decoration: const InputDecoration(border:OutlineInputBorder (),
                      hintText: 'Month',
                      icon: Icon(Icons.calendar_month_rounded)),
                  onTap: ()async {
                    var date=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(01),
                        lastDate: DateTime(31));
                    if (date!=null){
                      print(DateFormat('MM').format(date));
                    }
                  },
                ),
              ),
            ),
        ],
      ),
      Row(
        children: [const Text('Working Till'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: workYearTill,
                  decoration: const InputDecoration(border:OutlineInputBorder (),hintText: 'Year',icon: Icon(Icons.calendar_month_rounded)),
                  onTap: ()async {
                    var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2040));
                    if (date!=null){
                      print(DateFormat('YY').format(date));
                    }
                  },
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: workMonthTill,
                  decoration: const InputDecoration(border:OutlineInputBorder (),hintText: 'Month',icon: Icon(Icons.calendar_month_rounded)),
                  onTap: ()async {
                    var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(01), lastDate: DateTime(31));
                    if (date!=null){
                      print(DateFormat('MM').format(date));
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
                ElevatedButton(onPressed: (){}, child: const Text('Cancel')),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return const Add_education();
                  }));
                }, child: const Text('Submit')),
              ],
            ),

        ),
      ]
    ),
          ),
    ),
    );
  }
}
