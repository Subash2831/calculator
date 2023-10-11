import 'package:flutter/material.dart';
import 'package:subash/New%20Fullapp2.dart';
import 'package:subash/New%20Fullapp3.dart';
import 'package:subash/New%20Fullapp4.dart';


class newfull2 extends StatefulWidget {
  const newfull2({super.key});

  @override
  State<newfull2> createState() => _newfull2State();
}

class _newfull2State extends State<newfull2> {

  int _index = 0 ;


  final pages = [
    newfull3(),
    newfull4(),
    newfull5(),
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
        body: pages[_index],
        bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.rate_review,),label: "Rating"),
    ],
    currentIndex: _index,
    onTap: tap,
      ),
    );
  }
}