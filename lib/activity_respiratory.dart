import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Respiratory extends StatelessWidget {
  Respiratory({Key key, @required this.choice}) : super(key: key);

  final String choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Respiratory System"),

      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(height: 20,),
            Text(choice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Divider(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child:Text(choice=="LI"?'Improvise a song from 100 words approx. about the respiratory system.':
            choice=="NI"?'If you have a pet a house observe its breath and tell your parents about that (you can observe a pet of the neighborhood).':
            choice=="KI"?'Go run for 15 min, after that take a deep breath and describe what was the difference between breathing at rest and during the run.':
            choice=="SI"?'Draw your respiratory system on a big cartoon decorate and cut it. You can use it to decorate your room.':"",
            style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),
            )
            ),
          ],
        )
      )

    );
  }
}