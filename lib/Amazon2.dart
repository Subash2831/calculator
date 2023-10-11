import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:subash/Amazon.dart';
import 'package:subash/model.dart';


class amaz2 extends StatefulWidget {
  const amaz2({super.key});

  @override
  State<amaz2> createState() => _amaz2State();
}

class _amaz2State extends State<amaz2> {

  var currentindex=0;
  int _index = 0 ;
  final pages = [
    Center(child: Text("1")),
    amaz2(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }



  List<String> list = <String>
  [
    '1',
    '2',
    '3',
    '4'];

  void main() => runApp(const amaz2());

  var dropdownvalue ="Qty:1";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          leading: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const amaz())
                );
              },
              child: Icon(Icons.arrow_back),
          ),


          title: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 55,

             decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(7),color: Colors.white
              ),
              child: TextFormField(
               decoration: InputDecoration(
              icon: Icon(Icons.search),
             hintText: 'Search Amazo..',
             suffixIcon: Container(
               width:80,
               child: Row(
                 children: [SizedBox(width: 20,),
                   Icon(Icons.qr_code_scanner_outlined),SizedBox(width: 10,),
                   Icon(Icons.mic)
                 ],
               ),
             )
        ),
      ),
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Icon(Icons.qr_code_scanner),
            )
          ],
      ),



      body:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        onPageChanged: (index, reason){
                          setState(() {
                            currentindex=index;
                          });
                        },
                        height: 500,
                        aspectRatio: 50/9,
                        viewportFraction: 2,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 0),
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
                          child: Image(image: AssetImage("assets/img/shop.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        );
                      }
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 350.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.photo_camera),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 460.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.camera),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 470.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 140.0),
                      child: DotsIndicator(
                        dotsCount: lio.length,
                        position: currentindex,


                      ),
                    ),
                  ),
                ],
                ),






                Row(
                  children: [SizedBox(width: 8,),
                    Text("Vist the Store",
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                    SizedBox(width: 100,),
                    Text("4.3",style: TextStyle(fontSize: 15),),

                    SizedBox(width: 5,),
                    Container(
                      child: RatingBar.builder(initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        itemBuilder: (context, _)=> Icon(Icons.star,color: Colors.yellow,size: 5,),
                        onRatingUpdate: (rating) { print(rating); },
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("81,910",style: TextStyle(color: Colors.lightGreen),)
                  ],
                ),


                

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReadMoreText('An Amazon brand, Symbol is built'
                      ' on the pillars of quality, reliability and '
                      'affordability, offering a range of lifestyle '
                      'essentials that help you look good every day. '
                      'This Symbol men’s shirt, is woven from cotton'
                      ' blend in a two tone self structure lending it '
                      'a premium look for special occasions. This full'
                      ' sleeve shirt with semi cut away collar comes in '
                      'an easy regular fit. Update your look with solid color '
                      'formal trousers and black leather shoes.',
                  trimLines: 2,
                    colorClickableText: Colors.red,
                   trimMode: TrimMode.Line,
                   trimCollapsedText: 'Show More',style: TextStyle(),
                   trimExpandedText: 'Show less',
                     moreStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red),

                  ),
                ),




                SizedBox(height: 5,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(),color: Colors.red
                        ),
                        child:
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(text: 'Deal of the day ',
                                  style: TextStyle
                                    (fontWeight: FontWeight.bold,fontSize: 30),
                              ),
                            ]
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                Row(
                  children: [
                    Text('-12%',style: TextStyle(fontSize: 30,color: Colors.red),),
                    SizedBox(width: 10,),
                    Icon(Icons.currency_rupee,size: 15,),
                    Text('2199',style: TextStyle(fontSize: 30),),
                  ],
                ),


                Row(children: [SizedBox(width: 10,),
                  RichText(text: TextSpan(
                  text: 'M.R.P. : ',
                      style:TextStyle(color: Colors.black,fontSize: 12)
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: '₹2,499',
                      style:TextStyle(color: Colors.black,fontSize: 12,decoration: TextDecoration.lineThrough)
                  ),
                  ),
                ],
                ),

                Row(children: [SizedBox(height: 40, width: 10,),
                  RichText(text: TextSpan(
                      text: 'EMI ',
                      style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: 'starts at ₹75.No Cost EMI available.',
                      style:TextStyle(color: Colors.black,fontSize: 15)
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: 'EMI option.',
                      style:TextStyle(color: Colors.blue,fontSize: 15)
                  ),
                  ),
                ],
                ),


                Row(children: [SizedBox(width: 10,),
                  RichText(text: TextSpan(
                      text: 'Inclusive of all taxes',
                      style:TextStyle(color: Colors.black,fontSize: 15)
                  ),
                  ),
                ],
                ),


                SizedBox(height: 10,),
                Row(children: [SizedBox(width: 10,),
                  RichText(text: TextSpan(
                      text: 'Total:₹2,199',
                      style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
                  ),
                  ),
                ],
                ),


                SizedBox(height: 5,),
                Row(children: [SizedBox(width: 10,),
                  RichText(text: TextSpan(
                      text: 'FREE delivery ',
                      style:TextStyle(color: Colors.blue,fontSize: 16)
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: 'Friday,22 September.',
                      style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: 'Details.',
                      style:TextStyle(color: Colors.blue,fontSize: 16)
                  ),
                  ),
                ],
                ),


                SizedBox(height: 10,),
                Row(children: [SizedBox(width: 10,),
                  RichText(text: TextSpan(
                      text: 'Or fastest delivery',
                      style:TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold)
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: 'Tomorrow, 21 September.',
                      style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                  ),
                  ),
    ]
                ),


                Row(
                  children: [SizedBox(width: 10,),
                    RichText(text: TextSpan(
                        text: 'Order within',
                        style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    ),
                    RichText(text: TextSpan(
                        text: '6 hrs 2 mins.',
                        style:TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    ),
                    RichText(text: TextSpan(
                        text: 'Details',
                        style:TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    ),


                  ],
                ),


                SizedBox(height: 5,),
                Row(
                  children: [SizedBox(width: 10,),
                    Icon(Icons.location_on_outlined),
                    Text("Location-coimbatore")
                  ],
                ),
                
                
                
                Row(
                  children: [SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("In stock",style: TextStyle(fontSize: 16,color: Colors.lightGreen),),
                    ),
                  ],
                ),





                // Row(
                //   children: [
                //     Text("Qty: 1"),
                //     List(
                //       child: DropdownButton(items: [
                //         DropdownMenuItem(child:Text("1"),value: "", ),
                //         DropdownMenuItem(child:Text("2"),value: "", ),
                //         DropdownMenuItem(child:Text("3"),value: "", ),
                //         DropdownMenuItem(child:Text("4"),value: "", ),
                //
                //       ] ,
                //           borderRadius: BorderRadius.circular(25),
                //
                //           onChanged:
                //               (String? value) {
                //             setState(() {
                //               dropdownvalue = value!;
                //
                //             }
                //             );
                //           },
                //
                //
                //
                //
                // ),
                //     ),
                //   ],
                // ),


                
                Row(
                  children: [SizedBox(width: 10,),
                    Text("Qty"),
                    DropdownMenu(
                    initialSelection: list.first,

                    onSelected: (String? value) {
                     setState(() {
                     dropdownvalue = value!;
                     DecoratedBox(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.cyanAccent
                       ),
                     );
                     }
                     );
                     },
                     dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                     return DropdownMenuEntry<String>(value: value, label: value);
                     }
                     ).toList(),
                     ),

                       ],
                ),






                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: 380,
                  child: ElevatedButton(onPressed: () {}, child: Text("Add to Cart",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  ),
                ),



                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: 380,
                  child: ElevatedButton(onPressed: () {},
                  child: Text("Buy Now",style: TextStyle(color: Colors.black),),style:
                  ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(5),backgroundColor: Colors.orange,),),
                ),


                Container(
                  height: 100,
                  width: 100,

                ),










              ],
            ),
          ),
      bottomNavigationBar: BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: GestureDetector(

      onTap: ()
      {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const amaz())
      );
      },


      child: Icon(Icons.home)),label: "Home"),
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
