import 'package:flutter/material.dart';
class newapps6 extends StatelessWidget {
  const newapps6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.zero),
                image: DecorationImage(
                image: AssetImage("assets/img/win.jpeg"),
                  fit: BoxFit.fill
            ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 275,
                    width: 340,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),color: Colors.yellow,
                    ),
                    child: Column(
                      children: [SizedBox(height: 2,),
                        Row(children: [SizedBox(width: 5,),
                          Container(
                            height: 150,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/win.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,),
                          Column(children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/insta.jpeg")
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/img/insta.jpeg")
                                ),
                              ),
                            ),
                          ],
                          ),
                          SizedBox(
                            width: 10,),
                          Column(children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/img/insta.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/img/insta.jpeg"),
                                  fit: BoxFit.fill,

                                ),
                              ),
                            ),
                          ],
                          ),
                        ],
                        ),
                        SizedBox(height: 5,),
                        Row(children: [SizedBox(width: 5,),
                          Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/flag.jpeg"),
                                  fit: BoxFit.fill,
                              ),
                            ),
                            child: Center(child: Text("A",
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                          ),
                          SizedBox(width: 50,),
                          Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/flag.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Center(child: Text("B",
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),

                          ),
                        ],
                        ),
                        SizedBox(height: 5,),
                        Row(children: [SizedBox(width: 5,),
                          Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/insta.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                            child: Center(child: Text("C",
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                        ),
                          SizedBox(width: 50,),
                          Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/insta.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Center(child: Text("D",
                              style: TextStyle
                                (fontSize: 30,fontWeight: FontWeight.bold),)),
                          ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 400,
                    width: 450,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.horizontal(),color: Colors.white,
                    ),
                    child: Column(
                      children: [SizedBox(height: 20,),
                        Row(
                          children: [SizedBox(width: 10,),
                            Container(
                              height: 200,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/img/twitx.jpeg"),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                            SizedBox(width: 100,),
                            Column(
                              children: [Text("asdnsbad"),
                                SizedBox(width: 50,),
                                Text("asbdsabkjsa"),
                                Text("subash"),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
          ),
        );
  }
}
