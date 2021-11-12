import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Circulatory extends StatelessWidget {
  Circulatory({Key key, @required this.choice}) : super(key: key);

  final String choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Circulatory System"),

        ),
        body: SafeArea(
            child: Column(
              children: [
                Container(height: 20,),
                Text(choice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Divider(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child:Text(choice=="LI"?'Imagine and write a dialogue of 10 phrases maximum between the heart and a vein.\n You can record it with one of your parents or friends and share it on your social media accounts.':
                    choice=="NI"?'From the nature, collect two things that have the red color of blood.':
                    choice=="KI"?'With the use of a chalk draw on the floor outdoor of your house the circulatory system with its organs in big, in a way you walk on.':
                    choice=="SI"?'Imagine yourself a blood drop and walk on the trajectory of the circulatory system you draw.':"",
                      style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),
                    )
                ),
              ],
            )
        )

    );
  }
}