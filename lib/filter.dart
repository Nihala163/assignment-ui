import 'package:flutter/material.dart';

import 'home.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  @override
  Widget build(BuildContext context) {
    List<bool>isCheckedList=[false,false,false];
    return Scaffold(
      body: ListView(
        children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 1000,
                    width:20,
                    color: const Color(0xFFFFDBAD),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){},
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(10),
                                      topLeft: Radius.circular(10))) ,
                              ),
                            child: const Center(child: Text('Work mode')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(width: 250,
                            child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(
                               backgroundColor: const Color(0xFFFFDBAD),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(10),
                                      topLeft: Radius.circular(10))
                              ) ,
                            ),
                              child: const Center(child: Text('Experience')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: ElevatedButton(onPressed: (){},
                              style:ElevatedButton.styleFrom(
                                backgroundColor:const Color(0xFFFFDBAD),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft:Radius.circular(10),
                                        topLeft: Radius.circular(10))) ,
                              ),
                              child: const Center(child: Text('Top Companies')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){},
                            style:ElevatedButton.styleFrom(
                            backgroundColor:const Color(0xFFFFDBAD),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft:Radius.circular(10),
                                    topLeft: Radius.circular(10))) ,
                          ),
                            child: const Center(child: Text('Role')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom( backgroundColor: const Color(0xFFFFDBAD),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft:Radius.circular(10),
                                    topLeft: Radius.circular(10))) ,
                          ),
                            child: const Center(child: Text('Post BY')),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top:200),
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFFFFFFFF),
                                  elevation: 30), child: const Text('Submit')
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(height: 1000,
                    color: Colors.white,
                    child: Column(
                      children: [const Padding(
                        padding: EdgeInsets.only(right: 130,top: 15),
                        child: Text('Filter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: CheckboxListTile(onChanged: (bool?value){
                            setState(() {
                              isCheckedList[0]=value!;
                            });
                          },
                            value:isCheckedList[0],
                            title:const Text('Day Shift') ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: CheckboxListTile(
                            onChanged: (bool?value){
                            setState(() {
                              isCheckedList[1]=value!;
                            });
                          },
                            value:isCheckedList[1],
                            title:const Text('Noon Shift') ,
                          ),
                        ),
                        CheckboxListTile(onChanged: (bool?value){
                          setState(() {
                            isCheckedList[2]=value!;
                          });
                        },
                          value:isCheckedList[2],
                          title:const Text('Night Shift') ,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 575),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: (){}, child: const Text('Cancel')),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
