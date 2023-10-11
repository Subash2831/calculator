import 'package:flutter/material.dart';
class newfull1 extends StatelessWidget {
  const newfull1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.horizontal(),
        ),
        child: Column(
          children: [SizedBox(height: 300,),
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
            ElevatedButton(onPressed: () {}, child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),

          ],
        ),

      ),
    );
  }
}
