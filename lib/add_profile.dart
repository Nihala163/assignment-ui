import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'add_employment.dart';

class Add_Details extends StatefulWidget {
  const Add_Details({Key? key}) : super(key: key);

  @override
  State<Add_Details> createState() => _Add_DetailsState();
}

class _Add_DetailsState extends State<Add_Details> {
  final formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var phonenumber = TextEditingController();
  var email = TextEditingController();
  var address = TextEditingController();
  var dob = TextEditingController();

  String gender = 'male';

  set XFileimage(XFile? XFileimage) {}

  Future<void> user_details() async {
    final data = await SharedPreferences.getInstance();
    data.setString('Username', name.text);
    data.setString('Phonenumber', phonenumber.text);
    data.setString('Email', email.text);
    data.setString('Address', address.text);
    data.setString('Date_of_birth', dob.text);

  }



  var screensize;
  XFile? image;

  @override
  Widget build(BuildContext context) {
    screensize = MediaQuery.of(context).size;
    return Scaffold(

      body:
      SingleChildScrollView(
        child: Column(
          children: [const Center(child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Add your details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
          )),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.orange,
                          maxRadius: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 59),
                          child: IconButton(
                            onPressed: () async {
                              ImagePicker image = ImagePicker();
                              XFileimage = await image.pickImage(
                                  source: ImageSource.gallery);
                            },
                            icon: const Icon(Icons.add_a_photo),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 330),
                      child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15,),
                      child: TextFormField(
                        controller: name,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ('Enter your name'),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),

                      child: Row(
                        children: [
                          Container(
                            width: 200, // Adjust the width as needed
                            child: TextFormField(
                              controller: dob,
                              decoration: const InputDecoration(
                                labelText: "Date of birth",
                                icon: Icon(Icons.calendar_month_rounded),
                                border: OutlineInputBorder()
                              ),
                              onTap: () async {
                                var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1970),
                                  lastDate: DateTime(2100),
                                );
                                if (date != null) {
                                  setState(() {
                                    dob.text = DateFormat('dd-MM-yy').format(date);
                                  });
                                }
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                RadioListTile(
                                  title: const Text('Male'),
                                  value: 'male',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: const Text('Female'),
                                  value: 'Female',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 320),
                      child: Text('Number',style: TextStyle(fontWeight: FontWeight.bold,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: TextFormField(
                        controller: phonenumber,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ('Enter your Phone Number'),
                        ),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Cannot be empty';
                          } else if (value.length != 10) {
                            return 'Must be 10 characters long';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 330),
                      child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: TextFormField(
                        controller: email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ('Enter your email'),
                        ),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Cannot be empty';
                          }
                          if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                            return 'Please enter a valid email';
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 310,top: 20),
                      child: Text('Address',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: address,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ('Enter your address'),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your address';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          user_details();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const Add_employment();
                              }));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 20),

                        ),
                        child: const Icon(Icons.arrow_right_alt_sharp,color: Colors.white,size: 50,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
