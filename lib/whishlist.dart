import 'package:flutter/material.dart';

class Whishlist extends StatefulWidget {
  const Whishlist({super.key});

  @override
  State<Whishlist> createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Padding(
            padding: const EdgeInsets.only(right: 200),
            child: IconButton(onPressed: (){
            }, icon: const Icon(Icons.arrow_back_rounded)),
          ),
            Center(child: const Text('Whishlist',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
          ],
        ),
      ),
      body:  ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border:Border.all(), ),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
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
                                height: 100,
                                width: 100,
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
                              padding: const EdgeInsets.only(left: 110,),
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
                  height: 200,
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
                                height: 100,
                                width: 100,
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
                              padding: const EdgeInsets.only(left: 110,),
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
                  height: 200,
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
                                height: 100,
                                width: 100,
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
                              padding: const EdgeInsets.only(left: 110,),
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
                  height: 200,
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
                                height: 100,
                                width: 100,
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
                              padding: const EdgeInsets.only(left: 110,),
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
                  height: 200,
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
                                height: 100,
                                width: 100,
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
                              padding: const EdgeInsets.only(left: 110,),
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
        ],
      ),
    );
  }
}
