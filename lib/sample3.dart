import 'package:flutter/material.dart';
class fullsamp extends StatelessWidget {
  const fullsamp({super.key});

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
        SizedBox(height: 30,),
        Padding(
        padding: const EdgeInsets.all(4.0),
    child: Container(
    height: 400,
    width: 500,
    decoration: BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.circular(25),
    image: DecorationImage(
    image: AssetImage("assets/img/insta.jpeg"),
    fit: BoxFit.fill,
    ),
    ),
    child: Row(children: [
    SizedBox(width: 2,),
    Padding(
    padding: const EdgeInsets.only(bottom:90.0),
    child: Container(
    height: 190,
    width: 160,
    child: Padding(
      padding: const EdgeInsets.only(top: 180.0),
      child: Column(
        children: [Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),color: Colors.cyanAccent,
          ),
        )],
      ),
    ),
    decoration: BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.horizontal(),
    image: DecorationImage(
    image: AssetImage("assets/img/win.jpeg",),
    fit: BoxFit.fill,
    ),
    ),
    ),
        ),
      Row(children: [Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10)
        ),
      )],)
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
