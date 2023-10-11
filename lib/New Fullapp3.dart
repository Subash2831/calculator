import 'package:flutter/material.dart';
import 'package:subash/New%20Fullapp0.dart';
import 'package:subash/New%20Fullapp1.dart';

class newfull4 extends StatefulWidget {
  const newfull4({super.key});

  @override
  State<newfull4> createState() => _newfull4State();
}

class _newfull4State extends State<newfull4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: Container(child: GestureDetector(
          onTap: ()
              {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const newfull2()),
                );
              },
          child: Icon(Icons.arrow_circle_left),
        ),
          ),

        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(child: Text("Menu")),
        ),
        actions: [

          Container(child: GestureDetector(
          onTap: ()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const app0()),
            );
          },
            child: Icon(Icons.close,size: 30,),


          ),

    ),
        ],
      ),
      body:
      Column(children: [SizedBox(height: 10,),
        Center(child: Text("Reports",style: TextStyle(fontSize: 30),),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListTile(
              leading: Icon(Icons.person,size: 20,),
              title: Center(child: Text("Report 1"),),
              trailing: Icon(Icons.menu),tileColor: Colors.blue,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListTile(
              leading: Icon(Icons.person,size: 20,),
              title: Center(child: Text("Report 2"),),
              trailing: Icon(Icons.menu),tileColor: Colors.blue,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListTile(
              leading: Icon(Icons.person,size: 20,),
              title: Center(child: Text("Report 3"),),
              trailing: Icon(Icons.menu),tileColor: Colors.blue,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListTile(
              leading: Icon(Icons.person,size: 20,),
              title: Center(child: Text("Report 4"),),
              trailing: Icon(Icons.menu),tileColor: Colors.blue,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListTile(
              leading: Icon(Icons.person,size: 20,),
              title: Center(child: Text("Report 5"),),
              trailing: Icon(Icons.menu),tileColor: Colors.blue,
            ),
          ),
        ),SizedBox(height: 10,),
        Row(
          children: [SizedBox(width: 20,),
            Text("Help",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {}, child: Text("ok",
          style: TextStyle(color: Colors.black),),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
        SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: ListTile(
            leading: Icon(Icons.person,size: 40,),
            title: Center(child: Text("Log"),),
            trailing: Icon(Icons.arrow_circle_right,size: 40,),tileColor: Colors.blue,
          ),
        ),

      ),
      ],
      ),
    );
  }
}
