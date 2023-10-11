import 'package:flutter/material.dart';
class newapps5 extends StatelessWidget {
  const newapps5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: Icon(Icons.menu,size: 50,),
        title: Center(child: Text("Reports")),
        actions: [
          Padding(padding: EdgeInsets.all(10),child: Icon(Icons.cancel,size: 40,),)
        ],
      ),
      body:
      Column(children: [SizedBox(height: 50,),
        Center(child: Text("All Reports",style: TextStyle(fontSize: 30),),),
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
      ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: () {}, child: Text("ok",
          style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
        Padding(padding: EdgeInsets.all(10),child: Text("help",
          style: TextStyle(fontSize: 30 ,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted),
        ),
        ),


      ],
    ),
    );
  }
}
