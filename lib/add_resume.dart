import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Add_resume extends StatefulWidget {
  const Add_resume({super.key});

  @override
  State<Add_resume> createState() => _Add_resumeState();
}

class _Add_resumeState extends State<Add_resume> {
  var screensize;
  @override
  Widget build(BuildContext context) {
    screensize =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Add your Resume'),),
      body:Padding(
        padding: const EdgeInsets.only(top: 200),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Row(
                      children: [
                        DottedBorder(
                          color: Colors.orange,
                          radius: Radius.circular(20),
                          strokeWidth: 1,
                          child: Container(height: screensize,width:screensize,child: Center(child: Text('Add Resume'))),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(onPressed:(){} , child:Text('Finish') ),
                )
              ],
            ),
          ],
        ),
      )

      ,
    );
  }
}
