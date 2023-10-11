import 'package:flutter/material.dart';

class Samapp extends StatelessWidget {
  const Samapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Center(child: Text("Harley Hospital")),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.search),

          ),

          Padding(padding: EdgeInsets.all(6.0),
            child: Icon(Icons.phone),),
          Padding(padding: EdgeInsets.all(6.0), child: Icon(Icons.contact_mail),
          ),
          Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.emergency),),

        ],


      ),
      body: Column(children: [
        Padding(padding: EdgeInsets.all(8.0), child: TextFormField(),
        ),
        Padding(padding: EdgeInsets.all(9.0), child: TextFormField(),
        ),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: () {}, child: Text("login")),
        SizedBox(height: 40,),

        Container(
          height: 150,
          width: 150,
          child: Image.asset("assets/img/insta.jpeg"),
        ),
      ],


      ),


    );
  }
}
