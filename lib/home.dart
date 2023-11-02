import 'package:flutter/material.dart';
import 'add_resume.dart';
import 'filter.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [Padding(
            padding: const EdgeInsets.only(right: 200),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Add_resume();
              }));
            }, icon: const Icon(Icons.arrow_back_rounded,color: Colors.orange,)),
          ),
            const Text('Home'),

            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.save_as_outlined,color: Colors.orange,)),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Flexible(flex: 2,
            child: Column(
              children: [
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border:Border.all() ),
                          child: Row(
                            children: [
                              const Text('Search'),
                              Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.orange,)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(child: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const Filter();
                          }));
                        }, icon:const Icon(Icons.save_as_outlined))),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                          height: 50,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.orange,),
                                  child: const Center(child: Text('UI/UX')),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.orange,),
                                  child: const Center(child: Text('Android')),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.orange,),
                                  child: const Center(child: Text('Java')),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.orange,),
                                  child: const Center(child: Text('Angular')),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                                  child: const Center(child: Text('Flutter')),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Flexible(
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: [Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.grey,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('UI/UX Designer',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('College Name'),
                                    Text('20k-25k/Month'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155,),
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.save)),
                              )
                            ],
                          ),
                            const Padding(
                              padding: EdgeInsets.only(right: 155),
                              child: Text('Full Time             |          2020-2023 ',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Kozhikode'),
                                  Text('3 days before')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Flexible(
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: [Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.grey,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('UI/UX Designer',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('College Name'),
                                    Text('20k-25k/Month'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155,),
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.save)),
                              )
                            ],
                          ),
                            const Padding(
                              padding: EdgeInsets.only(right: 155),
                              child: Text('Full Time             |          2020-2023 ',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Kozhikode'),
                                  Text('3 days before')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Flexible(
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: [Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.grey,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('UI/UX Designer',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('College Name'),
                                    Text('20k-25k/Month'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155,),
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.save)),
                              )
                            ],
                          ),
                            const Padding(
                              padding: EdgeInsets.only(right: 155),
                              child: Text('Full Time             |          2020-2023 ',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Kozhikode'),
                                  Text('3 days before')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Flexible(
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: [Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.grey,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('UI/UX Designer',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('College Name'),
                                    Text('20k-25k/Month'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155,),
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.save)),
                              )
                            ],
                          ),
                            const Padding(
                              padding: EdgeInsets.only(right: 155),
                              child: Text('Full Time             |          2020-2023 ',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Kozhikode'),
                                  Text('3 days before')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
