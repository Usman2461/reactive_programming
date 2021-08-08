import 'package:flutter/material.dart';
import 'package:reactive_programming/src/blocs/bloc.dart';
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 20.0,
        ),
        emailField(),
        SizedBox(
          height: 10.0,
        ),
        passwordField(),
        SizedBox(
          height: 10.0,
        ),
        submitButton(),
      ]),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: blocInstance.emailError,
     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
       return TextField(
         onChanged: (value) {

           blocInstance.emailStreamController.sink.add(value);

         },
         keyboardType: TextInputType.emailAddress,
         decoration: InputDecoration(
             fillColor: Colors.black12,
             filled: true,
             hintText: "your@email.com",
             errorText: snapshot.hasError?snapshot.error.toString():" ",
             labelText: "Email address"),
       );
     },
    );
  }

  Widget passwordField() {

    return StreamBuilder(
      stream: blocInstance.passwordError,
      builder: (context, snapshot){
        return TextField(
          onChanged: (value) {
            blocInstance.passwordStreamController.sink.add(value);
          },
          obscureText: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black12,
              hintText: "Password",
              errorText: snapshot.hasError?snapshot.error.toString():" ",
              labelText: "Password"),
        );

      }

    );

  }

  Widget submitButton() {
    return ElevatedButton(onPressed: () {}, child: Text("Submit"));
  }
}
