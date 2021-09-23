import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home:MySnackBar()));
}



class MySnackBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:Scaffold(
      appBar:AppBar(title:Text("Snack Bar")),
      body:Builder(builder: (context){
        
      return  Center(
        child: RaisedButton(child:Text("Show SnackBar"),onPressed:(){
          final snackbar=SnackBar(content:Text("I am your SnackBar"),
                                  action:SnackBarAction(label:"Undo",onPressed:(){
                                    
                                  }),
                                 );
          Scaffold.of(context).showSnackBar(snackbar);
        }),
      ); 
     
        })));
  }
}