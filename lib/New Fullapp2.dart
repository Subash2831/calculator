import 'package:flutter/material.dart';

class newfull3 extends StatefulWidget {
  const newfull3({super.key});

  @override
  State<newfull3> createState() => _newfull3State();
}

class _newfull3State extends State<newfull3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Container(
          width: 800,
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.yellowAccent,
          ),
          child: Center(child: Text("HAPPY TRAVELS",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
          ),
          ),
        ),
      ),





      body: Container(
        height: double.infinity,
        width: 390,
        decoration: BoxDecoration(
          border: Border.all(),
        ),

          child: Column(
            children: [SizedBox(height: 10,),
              Row(
                children: [SizedBox(width:10,),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.horizontal(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/ss.jpeg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),





                  SizedBox(width: 20,),
                  Column(children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/seat.png"),
                        ),

                      ),
                    ),



                    SizedBox(height: 40,),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/seat.png"),
                        ),

                      ),
                    ),
                  ],
                  ),



                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/img/seat.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/img/seat.png"),
                          ),
                        ),
                      )
                    ],
                  ),
              ],
        ),




              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 10,),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/ss.jpeg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/seat.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/seat.png"),
                        ),
                      ),
                    ),
                  ],
                  ),
                  SizedBox(width: 50,),
                  Column(children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/seat.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/seat.png"),
                        ),
                      ),
                    )
                  ],
                  ),
                ],
              ),



              SizedBox(height: 10,),
              Row(children: [SizedBox(width: 10,),
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/img/ss.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Column(children: [
                  Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/seat.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/seat.png"),
                      ),
                    ),
                  ),
                ],
                ),
                SizedBox(width: 50,),
                Column(children: [
                  Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/seat.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/img/seat.png"),
                      ),
                    ),
                  )
                ],
                ),
              ],
              ),


              SizedBox(height: 20,),
              Row(children: [SizedBox(width: 10,),
                Container(
                  height: 58,
                  width: 370,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/img/welcome.png"),
                    ),
                  ),
                ),
              ],
              ),
            ],
          ),
      ),
    );
  }
}
