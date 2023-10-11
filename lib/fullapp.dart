import 'package:flutter/material.dart';
class thrapp extends StatelessWidget {
  const thrapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage
              (image: AssetImage("assets/img/logo.png"),

            ),
          ),
        ),

            title: Center(child: Text("GT SOFTWARE",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
          actions: [
            Padding(padding: EdgeInsets.all(10.0),child: Icon(Icons.menu,color: Colors.orange,),),

        ],
      ),

      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("assets/img/logo.png"),

                fit: BoxFit.fill
              ),
            ),
            child: Center(child: Text("Twitter World",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),



            ),
          ),
        ),
          SizedBox(height: 10,),
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
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),


                hintText: 'Password',

                border: OutlineInputBorder(),
              ),
            ),
          ),
           SizedBox(height: 40,),

          // ElevatedButton(onPressed: () {},
          //   child: Text("Login",style: TextStyle(fontSize: 30,color: Colors.black),),style:
          //   ElevatedButton.styleFrom(shape: CircleBorder(),
          //     padding: EdgeInsets.all(40),backgroundColor: Colors.red,),),


          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,

            ),


            child:Center(child: Text("Login")),
          )




      ],

      ),
    );



  }
}
