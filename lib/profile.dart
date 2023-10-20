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
                Row(
                  children: const [Text('Name',style: TextStyle(fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: CircleAvatar(backgroundImage: AssetImage('Assets/download.jpg'),
                        radius: 50,
                        backgroundColor: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50,right: 100),
                  child: SizedBox(
                    child: Container(height:100,width:200,
                      decoration: BoxDecoration(color:Color(0xFFFFF7EC),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          const Text('Name@gmail.com'),
                          const Text('46357428'),
                          const Text('Koyilandy,Kozhikode'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(
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
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Present Experience'),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Education'),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Skill'),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Certification'),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFFFCA86),
                          Color(0xFFFFF7EC)]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Row(
                      children: [
                        const Text('Add Language'),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right)),
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
