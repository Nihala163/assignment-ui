import 'package:assignment_ui/Add_certification.dart';
import 'package:assignment_ui/add_about.dart';
import 'package:assignment_ui/add_education.dart';
import 'package:assignment_ui/add_language.dart';
import 'package:assignment_ui/add_profile.dart';
import 'package:flutter/material.dart';

class Profile_view extends StatefulWidget {
  const Profile_view({super.key});

  @override
  State<Profile_view> createState() => _Profile_viewState();
}

class _Profile_viewState extends State<Profile_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height:MediaQuery.of(context).size.height ,width:MediaQuery.of(context).size.width ,
        child: SingleChildScrollView(
          child: Flexible(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_rounded)),
                    const Padding(
                      padding: EdgeInsets.only(left: 150),
                      child: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                const Row(
                  children: [Center(child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold),)),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Stack( children: [
                        CircleAvatar(backgroundColor: Colors.orange,
                          maxRadius: 50,
                          child: CircleAvatar(backgroundColor: Colors.white,maxRadius: 45,),
                        ),
                      ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50,right: 100),
                  child: SizedBox(
                    child: Container(height:100,width:200,
                      decoration: BoxDecoration(color:const Color(0xFFFFF7EC),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Column(
                        children: [
                          Text('Name@gmail.com'),
                          Text('46357428'),
                          Text('Koyilandy,Kozhikode'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Personal Details'),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Add_Details();
                            }));
                          }, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                           bottomRight: Radius.circular(10),
                           topRight: Radius.circular(10)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Present Experience'),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: IconButton(onPressed: (){

                          }, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Education'),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Add_education();
                            }));
                          }, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Skill'),
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Add_about();
                            }));
                          }, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Certification'),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Add_Certification();
                            }));
                          }, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Language'),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Add_Language();
                            }));
                          }, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
