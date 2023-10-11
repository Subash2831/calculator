import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:subash/New%20Fullapp0.dart';

class newfull5 extends StatefulWidget {
  const newfull5({super.key});

  @override
  State<newfull5> createState() => _newfull5State();
}

class _newfull5State extends State<newfull5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Center(
            child: CircleAvatar(backgroundImage: AssetImage("assets/img/bus.jpeg"),
            ),
          ),
        ),
        actions: [
          Container(
      child: GestureDetector(
      onTap: ()
      {
      Navigator.push(context,MaterialPageRoute(builder: (context) => const app0()
      ),
      );
      },
        child: Icon(Icons.cancel),
        ),
          ),

        ],
      ),
      body: Column(children: [
        Container(
          height: 700,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/img/bus.jpeg"),
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
              ],
            ),
          ],),
        ),
      ],
      ),
    );
  }
}
