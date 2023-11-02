import 'package:assignment_ui/profile.dart';
import 'package:flutter/material.dart';


class Add_about extends StatefulWidget {
  const Add_about({super.key});

  @override
  State<Add_about> createState() => _Add_aboutState();
}

class _Add_aboutState extends State<Add_about> {
  var about =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add About', style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const Padding(
                padding:
                EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                  "You can write about your years of experience, industry, or skills. People also talk about their achievements or previous job experiences.",
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFFFFA756)), // Add black border
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    controller: about,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: InputBorder.none, // Remove default border
                      labelText: "Add about",
                      hintText: "Enter about",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.white30),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 88.0, right: 90.0),
                child: ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Profile_view();
                  }));

                },
                  child: Text('Add')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


