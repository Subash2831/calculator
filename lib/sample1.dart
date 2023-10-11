import 'package:flutter/material.dart';

class newapp extends StatelessWidget {
  const newapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(Icons.menu,size: 30,color: Colors.cyan,),
          title: Text("Subash App",style: TextStyle(color: Colors.cyan,fontSize: 30,fontWeight: FontWeight.bold)),
          actions: [
            Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.email),),
            Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.phone),),
            Padding(
              padding: EdgeInsets.all(10.0), child: Icon(Icons.emergency),)
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          TextFormField(),

          ElevatedButton(onPressed: () {}, child: Text("Press")),

          Container(
            height: 200,
            width: 300,
            //color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage("assets/img/Twitter.png"),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle,

            ) ,

             child: Center(child:
             Text("Heloo",style: TextStyle
               (color: Colors.white,fontSize: 30,
                 fontWeight: FontWeight.bold))),
          ),
        ],)
    );
  }
}

