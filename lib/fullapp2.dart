import 'package:flutter/material.dart';

class newapps extends StatelessWidget {
  const newapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 600,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage("assets/img/insta.jpeg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column( children: [
            CircleAvatar(backgroundImage: AssetImage("assets/img/logo.png",),radius: 50,),

            SizedBox(height: 300,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter the Name',
                border: OutlineInputBorder(),
              ),
          ),
        ),
        SizedBox(height: 0,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Enter the Password',
              border: OutlineInputBorder(),),
          ),
        ),
            SizedBox(height: 5,),
            ElevatedButton(onPressed: (){}, child: Text("Login"))
          ],
          ),
      ),
        Container(
          height: 250,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                height: 150,
                width: 100,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.horizontal(),
                  image: DecorationImage(
                    image: AssetImage("assets/img/twitx.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
                ),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150.1),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.horizontal(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/apple.png"),
                        alignment: Alignment.topRight,
                        fit: BoxFit.fill,
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.1),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.horizontal(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/apple.png"),
                        alignment: Alignment.topRight,
                        fit: BoxFit.fill,
                      ),
                    ),

                  ),
                ),


              ],)

            ],
          ),
          ),

      ],
            ),
          );

  }
}
