import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridLayout {
  final String title;
  final String image;

  GridLayout({this.title, this.image});
}


List<GridLayout> options = [
  GridLayout(title: '1-Breathing and the respiratory system', image: "lung.png"),
  GridLayout(title: '2-circulatory system', image: "heart.png"),
  GridLayout(title: '3-Diet and food chains', image: "cycle.png"),
  GridLayout(title: '4-Light and its sources', image: "lamp.png"),
  GridLayout(title: '5-Reflection and refraction', image: "reflection.png"),
  GridLayout(title: '6-Electricity and electric circuits', image: "circuit.png"),
  GridLayout(title: '7-Convergent and divergent lenses', image: "lens.png"),
];


class GridOptions extends StatelessWidget {
  final GridLayout layout;
  GridOptions({this.layout});
  @override
  Widget build(BuildContext context) {
    String image=layout.image;
    return Card(
      color: Colors.blue[50],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/$image',width: 80,height: 80,),
           /* Icon(
              layout.icon,
              size: 40,
            ),*/
            Text(
              layout.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
designGrid({String title,String image}){
  return Card(
    color: Colors.blue[50],
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/$image',width: 50,height: 50,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:14,

            ),
          ),
        ],
      ),
    ),
  );
}