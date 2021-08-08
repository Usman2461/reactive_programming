import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{

  final bloc = Blocs();


  @override
  bool updateShouldNotify(_) {
   return true;
  }

  static Blocs of(BuildContext context)
  {
    return (context.(Provider) as Provider).bloc;
  }

}