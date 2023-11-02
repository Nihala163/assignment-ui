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
  String dropdownvalue2='2023';
  var workYear=[
    '1990',
    '1991',
    '1992',
    '1993',
    '1994',
    '1995',
    '1996',
    '1997',
    '1998',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
    '2028',
    '2029',
    '2030'
  ];
  String dropdownvalue3='July';
  var workMonth=[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key:formkey ,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Center(child: const Text('Add Emplpoyment',style: TextStyle(fontWeight:FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: IconButton(onPressed: (){}, icon: const CircleAvatar(child: Icon(Icons.close))),
                    )
                  ],
                ),
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
                  padding: const EdgeInsets.all(15.0),
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
                  padding: const EdgeInsets.all(15.0),
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
                  padding: const EdgeInsets.all(15.0),
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
        children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(hintText:'Year',border: OutlineInputBorder()),
                    value: dropdownvalue2,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items:workYear.map((String workYear){
                      return DropdownMenuItem(
                        value: workYear,
                        child: Text(workYear),);
                    }).toList(),
                    onChanged:(String?newValue){
                      setState(() {
                        dropdownvalue2=newValue!;
                      });
                    }
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:  DropdownButtonFormField(
                    decoration: const InputDecoration(hintText:'Month',border: OutlineInputBorder()),
                    value: dropdownvalue3,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items:workMonth.map((String workMonth){
                      return DropdownMenuItem(
                        value: workMonth,
                        child: Text(workMonth),);
                    }).toList(),
                    onChanged:(String?newValue){
                      setState(() {
                        dropdownvalue3=newValue!;
                      });
                    }
                ),
              ),
            ),
        ],
      ),
                const Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: Text('Working Till',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
      Row(
        children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(hintText:'Year',border: OutlineInputBorder(),),
                    borderRadius: BorderRadius.circular(30),
                    value: dropdownvalue2,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items:workYear.map((String workYear){
                      return DropdownMenuItem(
                        value: workYear,
                        child: Text(workYear),);
                    }).toList(),
                    onChanged:(String?newValue){
                      setState(() {
                        dropdownvalue2=newValue!;
                      });
                    }
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:  DropdownButtonFormField(
                    decoration: const InputDecoration(hintText:'Month',border: OutlineInputBorder()),
                    value: dropdownvalue3,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items:workMonth.map((String workMonth){
                      return DropdownMenuItem(
                        value: workMonth,
                        child: Text(workMonth),);
                    }).toList(),
                    onChanged:(String?newValue){
                      setState(() {
                        dropdownvalue3=newValue!;
                      });
                    }
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
