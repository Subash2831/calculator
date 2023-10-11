import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class newapps4 extends StatelessWidget {
  const newapps4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Center(
            child: CircleAvatar(backgroundImage: AssetImage("assets/img/flag.jpeg"),
            ),
          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.all(10),child: Icon(Icons.cancel),)
        ],
      ),
      body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
        height: 400,
        width: 390,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
        ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 200.0),
                  child: Row(children: [
                    Container(
                      height: 200,
                      width: 110,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage("assets/img/insta.jpeg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    RatingBar.builder(initialRating: 3,
                      minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _)=> Icon(Icons.star,color: Colors.indigo,),
                      onRatingUpdate: (rating) { print(rating); },
                    ),
                  ],),
                ),
              ),
      ),
          ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
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
            ),
            Expanded(
              child: Text("subashkhjcbjkvbjkhbdjkfbfjjndjkfhjbdahjfhbhbfhbfhbfhhfhklnjafn"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/img/win.jpeg"),
                    fit: BoxFit.fill,
                  )
                ),
              ),
            )
          ],
        ),


      ],
      ),

    );
  }
}
