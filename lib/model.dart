

import 'dart:ui';

class Model
{
  
  String? image;
  String? text;
  
  Model(this.image,this.text);

}

List lis = modelData.map((e) => Model(e["image"], e["text"])).toList();



var modelData = [

  {"image":"assets/img/prime.jpg","text":"Prime ",},
  {"image":"assets/img/fresh.jpg","text":"Fresh",},
  {"image":"assets/img/w.jpg","text":"hello",},
  {"image":"assets/img/prime.jpg","text":"",},
  {"image":"assets/img/prime.jpg","text":"hello",},
];

///
class dot
{
  String? image;

  dot(this.image);
}
List lio = dotData.map((e)=> dot(e["image"])).toList();


var dotData =[

  {"image":"assets/img/shop.jpeg",},
  {"image":"assets/img/Twitter.png",},
  {"image":"assets/img/win.jpeg",},
  {"image":"assets/img/insta.jpeg",},
];

///
// class indi
// {
//   String? dotsIndicator;
//   indi(this.dotsIndicator);
//
// }
// List dod = indiData.map((e) => indi(e["dotsindicator"])).toList();
// var indiData = [
//
//   {"dotsindicator":"dotsCounts:4"},
// ];