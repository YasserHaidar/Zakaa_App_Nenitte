import 'package:e_book/activity_respiratory.dart';
import 'package:e_book/pdfScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'activity_animals.dart';
import 'activity_circulatory.dart';
import 'activity_electrical.dart';
import 'activity_lenses.dart';
import 'activity_light.dart';
import 'gridDesign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZAKA@',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ZAKA@'),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

MyTile t = new MyTile(
  'Description',
  <MyTile>[
    new MyTile(
        'ZAKA@ is an educational application aiming to help students to learn sciences on their own depending on the type of their Multiple Intelligence.\nThis first version is formed from 6 science chapters for Grade 5 students, in addition to activities targeting the four Multiple Intelligences (linguistic, Naturalistic, kinesthetic, and spatial). \n'
        'Each chapter below contains 4 activities LI, NI, KI, and SI with a quiz. When choosing the chapter from the interface, the student can choose the activity of the Multiple Intelligence he/she wants.\nThe activities suggested for students in this app like inventing songs about a theme, walking in the nature and discover many materials, make crafts about a lesson... would motivate students to learn sciences in an innovative and easy way. They will be motivated to enhance their knowledge not from memorizing but from having fun.'),
  ],
);
MyTile about = new MyTile(
  'About Us',
  <MyTile>[
    new MyTile(
        'I am Ninette Kamel, a PhD candidate in the Lebanese University specializing in Educational Technology, and I believe that sometime ICT can be implemented in schools in a way that harness children, thus “Moderation is the key”.\n'
        'I work as the Communications and Outreach Manager at the National Association for Science and Research, a Lebanese NGO that aims to foster innovation and technological creativity among youth. I have also participated in training the teachers of the secondary cycle about using technology in education at the Lebanese University.\n'
        'Due to the Covid-19 pandemic, teachers and students found themselves facing many problems, one of them is spending all the time in front the screen and students became just listeners. Hereby, after I accomplished my PhD thesis about the impact of using tablets on the multiple intelligences of students, I realized that we can use this theory even during online learning. This will help students to learn through the manner they love and by doing several activities not just watching the teacher speaking.'),
  ],
);
MyTile contact = new MyTile(
  'Contact Us',
  <MyTile>[
    new MyTile('Email : ninette@nasr.org.lb'),
    new MyTile('Phone : 0096171749713'),
  ],
);
Widget _buildTiles(MyTile t) {
  if (t.children.isEmpty)
    return new ListTile(
        dense: true,
        enabled: true,
        isThreeLine: false,
        onLongPress: () => print("long press"),
        onTap: () => print("tap"),
        selected: true,
        title: new Text(
          t.title,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 17, color: Colors.black),
        ));

  return new ExpansionTile(
    key: new PageStorageKey<int>(3),
    title: new Text(
      t.title,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),
    ),
    children: t.children.map(_buildTiles).toList(),
  );
}

Future _simpleDialog(BuildContext context, String chapter) async {
  return await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.only(left: 5),
          title: const Text(
            'Select an Activity ',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return chapter == "Respiratory"
                      ? Respiratory(
                          choice: "LI",
                        )
                      : chapter == "Circulatory"
                          ? Circulatory(
                              choice: "LI",
                            )
                          : chapter == "Animals"
                              ? Animals(
                                  choice: "LI",
                                )
                              : chapter == "Electrical"
                                  ? Electrical(
                                      choice: "LI",
                                    )
                                  : chapter == "Light"
                                      ? Light(
                                          choice: "LI",
                                        )
                                      : chapter == "Lenses"
                                          ? Lenses(
                                              choice: "LI",
                                            )
                                          : null;
                }));
                /*
*/
              },
              child: const Text(
                '1-LI',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                // Navigator.pop(context, Departments.Research);
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return chapter == "Respiratory"
                      ? Respiratory(
                          choice: "NI",
                        )
                      : chapter == "Circulatory"
                          ? Circulatory(
                              choice: "NI",
                            )
                          : chapter == "Animals"
                              ? Animals(
                                  choice: "NI",
                                )
                              : chapter == "Electrical"
                                  ? Electrical(
                                      choice: "NI",
                                    )
                                  : chapter == "Light"
                                      ? Light(
                                          choice: "NI",
                                        )
                                      : chapter == "Lenses"
                                          ? Lenses(
                                              choice: "NI",
                                            )
                                          : null;
                }));
              },
              child: const Text(
                '2-NI',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return chapter == "Respiratory"
                      ? Respiratory(
                          choice: "KI",
                        )
                      : chapter == "Circulatory"
                          ? Circulatory(
                              choice: "KI",
                            )
                          : chapter == "Animals"
                              ? Animals(
                                  choice: "KI",
                                )
                              : chapter == "Electrical"
                                  ? Electrical(
                                      choice: "KI",
                                    )
                                  : chapter == "Light"
                                      ? Light(
                                          choice: "KI",
                                        )
                                      : chapter == "Lenses"
                                          ? Lenses(
                                              choice: "KI",
                                            )
                                          : null;
                }));
              },
              child: const Text(
                '3-KI',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return chapter == "Respiratory"
                      ? Respiratory(
                          choice: "SI",
                        )
                      : chapter == "Circulatory"
                          ? Circulatory(
                              choice: "SI",
                            )
                          : chapter == "Animals"
                              ? Animals(
                                  choice: "SI",
                                )
                              : chapter == "Electrical"
                                  ? Electrical(
                                      choice: "SI",
                                    )
                                  : chapter == "Light"
                                      ? Light(
                                          choice: "SI",
                                        )
                                      : chapter == "Lenses"
                                          ? Lenses(
                                              choice: "SI",
                                            )
                                          : null;
                }));
              },
              child: const Text(
                '4-SI',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PDFViewerFromAsset(
                    pdfAssetPath: chapter == "Respiratory"
                        ? "assets/Respiratory system.pdf"
                        : chapter == "Circulatory"
                            ? "assets/circulatory system.pdf"
                            : chapter == "Animals"
                                ? "assets/Animals Food Chain.pdf"
                                : chapter == "Light"
                                    ? "assets/Light and its colors.pdf"
                                    : chapter == "Lenses"
                                        ? "assets/Reflection and refraction.pdf"
                                        : chapter == "Electrical"
                                            ? "assets/electrical_Circuits.pdf"
                                            : "",
                    title: "Quiz",
                  );
                }));
              },
              child: const Text(
                '5-Quiz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      });
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List _buildItems(BuildContext context) {
  List<Widget> listItems = List();
  listItems.add(
    GestureDetector(
      onTap: () {
        _simpleDialog(context, "Respiratory");
        /* Navigator.push(context, MaterialPageRoute(builder: (context) {
          //  return PDFViewerFromUrl( url: "https://drive.google.com/file/d/0B64tAYuvarmJc3RhcnRlcl9maWxl/view",);
          return PDFViewerFromAsset(
            pdfAssetPath: "assets/Respiratory system.pdf",
            title: "Chapter 1",
          );
        }));*/
      },
      child: designGrid(title: 'Respiratory System', image: "lung.png"),
    ),
  );
  listItems.add(
    GestureDetector(
      onTap: () {
        _simpleDialog(context, "Circulatory");
      },
      child: designGrid(title: 'Circulatory System', image: "heart.png"),
    ),
  );
  listItems.add(
    GestureDetector(
      onTap: () {
        _simpleDialog(context, "Animals");
      },
      child: designGrid(title: 'Animals Food Chain', image: "cycle.png"),
    ),
  );
  listItems.add(
    GestureDetector(
      onTap: () {
        _simpleDialog(context, "Light");
      },
      child: designGrid(title: 'Light and its colors', image: "lamp.png"),
    ),
  );
  listItems.add(
    GestureDetector(
      onTap: () {
        _simpleDialog(context, "Electrical");
      },
      child: designGrid(title: 'Electrical circuits', image: "circuit.png"),
    ),
  );
  listItems.add(
    GestureDetector(
      onTap: () {
        _simpleDialog(context, "Lenses");
      },
      child:
          designGrid(title: 'Refraction and lenses', image: "reflection.png"),
    ),
  );
  return listItems;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        /* appBar: AppBar(
        title: Text(widget.title),
      ),*/
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 20,
              ),
              Text(
                "ZAKA@",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              Divider(
                height: 10,
              ),
              Center(
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage("assets/logo.jpeg"),
                        ))),
              ),
              Divider(
                height: 10,
              ),

              Text(
                'Chapters',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 10,
              ),
              Container(
                height: 250,
                child: GridView.custom(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3.0,
                    crossAxisSpacing: 3.0,
                  ),
                  childrenDelegate: SliverChildListDelegate(
                      _buildItems(context) //SliverChildBuilderDelegate(

                      //  (BuildContext context, int index) => GridOptions(

                      //  layout: options[index],
                      //  ),
                      ),
                ),
              ),

              //Description
              Center(
                child: ExpansionTile(
                  key: new PageStorageKey<int>(3),
                  title: new Text(
                    t.title,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                  children: t.children.map(_buildTiles).toList(),
                ),
              ),
              Divider(
                height: 10,
              ),

              //About Us
              Center(
                child: ExpansionTile(
                  key: new PageStorageKey<int>(3),
                  title: new Text(
                    about.title,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                  children: about.children.map(_buildTiles).toList(),
                ),
              ),
              Divider(
                height: 10,
              ),

              //Contact Us
              Center(
                child: ExpansionTile(
                  key: new PageStorageKey<int>(3),
                  title: new Text(
                    contact.title,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                  children: contact.children.map(_buildTiles).toList(),
                ),
              ),
              Divider(
                height: 10,
              ),
              /* Container(
              height:10,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.blue[50],
                  onPressed: () {  },
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      Text("About App")
                    ],
                  ),
                ),
                Container(
                  width: 50,
                ),
                RaisedButton(
                  color: Colors.blue[50],
                  onPressed: () {  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.contact_mail),

                      Text("Contact Us")
                    ],
                  ),
                ),
              ],
            )
            */
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
