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
            }, icon: Icon(Icons.arrow_back_rounded)),
          ),
            Text('Whishlist',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
      body:  Column(
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
        ],
      ),
    );
  }
}
