
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:subash/Amazon2.dart';

import 'color.dart';
import 'model.dart';

class amaz extends StatefulWidget {
  const amaz({super.key});

  @override
  State<amaz> createState() => _amazState();
}

class _amazState extends State<amaz> {

  var currentindex=0;
  int _index = 0 ;
  final pages = [
    Center(child: Text("1")),
    amaz(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cy,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(7),color: Colors.white
            ),

            child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),SizedBox(width: 5,),
                  Text("Search Amazon.in"),SizedBox(width: 50,),
                  Icon(Icons.settings_overscan_rounded),SizedBox(width: 20,),
                  Icon(Icons.settings_voice_outlined),
                ],
              ),
          ),
        ),
        leadingWidth: 300,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Icon(Icons.qr_code_scanner),
          )
        ],
            ),


      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: as,
              ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                      Icon(Icons.location_on_outlined),SizedBox(width: 10,),
                      Text("Deliver to Subash-Coimbatore 641038"),
                    Icon(Icons.keyboard_arrow_down,)
                  ],
                ),
              ),







            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lis.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(),
                        ),
                        child: Column(
                          children: [
                            Image.asset(lis[index].image,fit: BoxFit.fill,),
                            Text(lis[index].text),

                          ],
                        )
                      ),
                    );
                  }
              ),
            ),
    
    
         Stack(children: [

           CarouselSlider.builder(
                     options: CarouselOptions(
                     height: 200,
                     onPageChanged: (index, reason){
                     setState(() {
                     currentindex=index;
                       });
                       },
                     aspectRatio: 50/9,
                      viewportFraction: 2,
                      initialPage: 0,
                     enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                       autoPlayCurve: Curves.fastOutSlowIn,
                       enlargeCenterPage: false,
                       enlargeFactor: 0.5,
             // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                      ),
                      itemCount: lio.length,
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                      {
                      return Container(
                       height: double.infinity,
                       width: double.infinity,
                       child:
                       Image.asset(lio[itemIndex].image,fit: BoxFit.fill,),
                      );
             }
             ),
           Center(child: Padding(
             padding: const EdgeInsets.only(top: 180.0),
             child: DotsIndicator(
               dotsCount: lio.length,
               position: currentindex,

             ),
            
           )
           )
                   ]
         ),
    



            Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          width: 110,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(5),color: Colors.grey
                          ),
                        child: Column(
                          children: [
                            Row(children: [SizedBox(width: 4,),
                              Column(
                                children: [
                                  Container(
                                    child: Icon(Icons.abc),
                                  ),
                                  Text("hgbug")
                                ],
                              ),
                              SizedBox(width: 25,),
                              Column(
                                children: [
                                  Container(
                                    child: Icon(Icons.abc),
                                  ),
                                  Text("uhbuh")
                                ],
                              ),
                            ],
                            ),
                            Row(children: [
                              Column(
                                children: [SizedBox(height: 30,),
                                  Container(
                                    child: Icon(Icons.abc),
                                  ),
                                  Text("jnh")
                                ],
                              ),
                              SizedBox(width: 25,),
                              Column(
                                children: [SizedBox(height: 30,),
                                  Container(
                                    child: Icon(Icons.abc),
                                  ),
                                  Text("jhbhu")
                                ],
                              ),
                            ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),









            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/oneplus.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),








            SizedBox(height: 5,),
            Container(
              child: Row(
                children: [
                  Text("Deals Of you",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),

            ),








            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const amaz2()),

                );
              },
              child: Container(
                height: 800,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10
                    ),
                    itemCount: 4,
                    physics:  NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                        ),
                          child: Column(children: [
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/fresh.jpg"),
                                ),
                              ),
                            ),
                            Text("12% off Deal of the Day")
                          ],
                          ),
                        );
                    }
                    ),
              ),
            ),

   ],
        ),
      ),
      
      
      
      bottomNavigationBar: BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.gif_box_sharp,color: Colors.red,),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.black,),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined,color: Colors.blue,),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,),label: "Cart"),

        ],
        currentIndex: _index,
        onTap: tap,
      ) ,

    );

  }
  }
