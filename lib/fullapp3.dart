import 'dart:ui';

import 'package:flutter/material.dart';
class newapps3 extends StatelessWidget {
  const newapps3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.zero,
            image: DecorationImage(
              image: AssetImage("assets/img/win.jpeg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(children: [
            CircleAvatar(backgroundImage:
            AssetImage("assets/img/logo.png"),radius: 50,),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img/flag.jpeg"),
                          fit: BoxFit.fill,
                        ),
                      ),


                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 30,sigmaX: 30),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 190,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius: BorderRadius.horizontal(),
                                              image: DecorationImage(
                                                image: AssetImage("assets/img/win.jpeg"),
                                                fit: BoxFit.fill,),

                                            ),
                                            child: Column(
                                              children: [Container(
                                                height: 160,
                                                width: 100,
                                              ),
                                               Container(
                                                 height: 28,
                                                 width: 160,
                                                 decoration: BoxDecoration(
                                                   border: Border.all(),
                                                   borderRadius: BorderRadius.horizontal(),color: Colors.white,
                                                 ),
                                                 child: Center(child: Text("subash")),
                                               ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(9.0),
                                          child: Container(
                                            height: 190,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius: BorderRadius.horizontal(),
                                              image: DecorationImage(
                                                image: AssetImage("assets/img/win.jpeg"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:160.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                  ),
                                                  child: Container
                                                    (child: Center(child: Text("Windows 10"),),
                                                    color: Colors.amberAccent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: AssetImage("assets/img/win.jpeg"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50.0),
                                            child: Column(children: [Padding(
                                              padding: const EdgeInsets.only(left: 50.0),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  borderRadius: BorderRadius.circular(5),
                                                  image: DecorationImage(
                                                    image: AssetImage("assets/img/insta.jpeg"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 50.0),
                                                child: Container (
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    borderRadius: BorderRadius.circular(5),
                                                    image: DecorationImage(
                                                      image: AssetImage("assets/img/insta.jpeg"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Expanded(child: Text("subashhicbdidugfiudfiudf"
                                              "uidfhfbdbfduygfudygf",
                                            style: TextStyle(color: Colors.deepOrange,fontSize: 20),
                                          ),
                                          ),
                                        ],
                                        ),
                                      ),
                                    ),
                                ],
                                ),
                              ),
                      ),
                          ),
                  ),
                  ),
             Container(
               height: 302,
               width: 375,
               decoration: BoxDecoration(
                 border: Border.all(),
                 borderRadius: BorderRadius.circular(10),color: Colors.yellow,
              ),

               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column(
                   children: [
                     SizedBox(height: 10,),
                     TextFormField(
                       decoration: InputDecoration(
                         hintText: 'SUBASH',filled:true,fillColor: Colors.yellow,
                         border: OutlineInputBorder(),
                       ),
                     ),
                     SizedBox(height: 10,),
                     SizedBox(
                         height:80,
                         width: 90,
                         child: ElevatedButton(onPressed: () {}, child: Text("Press"),)
                     ),
                     Container(
                       height: 50,
                       width: 40,
                       decoration: BoxDecoration(

                       ),
                     ),

                     SizedBox(height: 6,),
                     Column(children: [
                       Text('4.50 PM',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                     ],
                     ),
                 ClipRRect(
                   borderRadius: BorderRadius.circular(5),
                   child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 100,sigmaY: 100),),),
                     SizedBox(height: 40,),

                     TextButton.icon(onPressed: () {
                       Navigator.pushNamed(context, '/Location');},
                       icon: Icon(Icons.edit_location), label: Text('Edit Location'),),
                   ],
                 ),
               ),

             ),



          ],
          ),
        ),
        );


  }
}
