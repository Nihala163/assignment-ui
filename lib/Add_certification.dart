import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Add_Certification extends StatefulWidget {
  const Add_Certification({super.key});

  @override
  State<Add_Certification> createState() => _Add_CertificationState();
}

class _Add_CertificationState extends State<Add_Certification> {
  String FilePath='';
  Future<void>_pickFile()async{
    try{
      FilePickerResult?result=await FilePicker.platform.pickFiles();
      if(result!=null){
        String? filePath=result.files.single.path;
        setState(() {
          FilePath=filePath!;
        });
      }
    }catch(e){
      print('Error picking files :$e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Certification'),),
      body:Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Flexible(
          flex: 2,
          child: Center(
            child: Column(
              children: [
                DottedBorder(
                  color: Colors.orange,
                  radius: const Radius.circular(20),
                  strokeWidth: 3,
                  child: Center(
                    child: Container(height: 100,width: 200,
                      child: TextButton(
                          onPressed:_pickFile,
                          child: const Center(child: Text('Upload you Certificates'))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(onPressed:(){} , child:const Text('Submit') ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
