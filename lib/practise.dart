// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
//
// class Cake{
//
// }
// class Order{
//   String type;
//   Order(this.type);
//
// }
//
// void main(){
//
//   final key  = GlobalKey();
//   final controller = new StreamController();
//
//   final order = new Order("banana Cake");
//   final order1 = new Order("chocolate");
//
//   final baker = new StreamTransformer.fromHandlers(handleData: (data, sink){
//     if(data == "chocolate")
//       {
//         sink.add("ok hy");
//         sink.add("o shit man");
//       }
//     else{
//       sink.addError("I cant bake that");
//     }
//   });
//
//   controller.sink.add(order);
//   controller.sink.add(order1);
//
//   controller.stream.map((order)=> order.type).transform(baker).listen((event) {
//
//     print(event);
//   },
//     onError: (err){
//      print(err);
//     }
//   );
//
//   bar(value){
//     return "chumi";
//   }
//
//   Future<int> future = Future((){
//     return 5;
//   });  // Result of foo() as a future.
//   future.then((int value) => bar(value), onError: (){})
//       .catchError((e) => 499);
// }
