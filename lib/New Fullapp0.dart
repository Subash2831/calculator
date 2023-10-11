import 'package:flutter/material.dart';
import 'package:subash/New%20Fullapp1.dart';

class app0 extends StatefulWidget {
  const app0({super.key});

  @override
  State<app0> createState() => _app0State();
}

class _app0State extends State<app0> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        border: Border.all(),
    borderRadius: BorderRadius.horizontal(),
          image: DecorationImage(
            image: AssetImage("assets/img/t.jpeg"),
           fit: BoxFit.fill
          ),
    ),
    child: Column(
      children: [CircleAvatar(backgroundImage: AssetImage("assets/img/bus.jpeg"),radius: 200,),
        Column(
        children: [SizedBox(height: 10,),
        TextFormField(
        decoration: InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'User Name',
        border: OutlineInputBorder(),
        ),
        ),
        SizedBox(height: 20,),
        TextFormField(
        decoration: InputDecoration(
        icon: Icon(Icons.password),
        hintText: 'Password',
        border: OutlineInputBorder(),
        ),
        ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const newfull2()),);
          },
              child: Text("Login",style:
              TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
        ],
        ),
      ],
    ),
    ),
    );
  }
}
