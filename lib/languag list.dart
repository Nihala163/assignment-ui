import 'package:flutter/material.dart';

class AddingLanguage extends StatefulWidget {
  const AddingLanguage({super.key});

  @override
  State<AddingLanguage> createState() => _AddingLanguageState();
}

class _AddingLanguageState extends State<AddingLanguage> {
  @override
  Widget build(BuildContext context) {
    var language=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add About', style: TextStyle(color: Colors.white),),),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFFFA756)), // Add black border
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    controller: language,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove default border
                      labelText: "Add language",
                      hintText: "Enter language",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.white30),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 88.0, right: 90.0),
                child: ElevatedButton(onPressed:(){},
                  child: Container(
                    child: Center(
                      child: Text(
                        "ADD",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFA756),
                    ),
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
