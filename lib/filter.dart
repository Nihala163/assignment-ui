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
      appBar: AppBar(
        title: Row(
          children: [Padding(
            padding: const EdgeInsets.only(right: 200),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Home();
              }));
            }, icon: const Icon(Icons.arrow_back_rounded)),
          ),
            const Text('Filter',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [ Padding(
              padding: const EdgeInsets.only(top: 600),
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFFFFFFF),
                      elevation: 30), child: const Text('Submit')
              ),
            ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1000,
                      width:30,
                      color: const Color(0xFFFFDBAD),
                      child: Column(
                        children: [
                          Container(decoration: const BoxDecoration(color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:Radius.circular(20),
                                  topLeft: Radius.circular(20))),
                            width: 200,height: 20,child: const Center(child: Text('Work mode')),),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Top Companies'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Role'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Post by'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 600),
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
                        children: [
                          CheckboxListTile(onChanged: (bool?value){
                            setState(() {
                              isCheckedList[0]=value!;
                            });
                          },
                            value:isCheckedList[0],
                            title:const Text('Day Shift') ,
                          ),
                          CheckboxListTile(onChanged: (bool?value){
                            setState(() {
                              isCheckedList[1]=value!;
                            });
                          },
                            value:isCheckedList[1],
                            title:const Text('Noon Shift') ,
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
        ],
      ),
    );
  }
}
