import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BackgroundImage(),
            SearchBar(),
            //Badge1
            Align(
              alignment: FractionalOffset(0.08, 0.12),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 3, 2, 1),
                child: Text(
                  "running X",
                  style: TextStyle(color: Colors.white70),
                ),
                margin: EdgeInsets.all(10),
                height: 25,
                width: 80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[700],
                      blurRadius: 15.0,
                    ),
                  ],
                  color: Colors.pink[800],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            //Badge2
            Align(
              alignment: FractionalOffset(0.37, 0.12),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 3, 2, 1),
                child: Text(
                  "near me X",
                  style: TextStyle(color: Colors.white70),
                ),
                margin: EdgeInsets.all(10),
                height: 25,
                width: 80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[700],
                      blurRadius: 15.0,
                    ),
                  ],
                  color: Colors.pink[800],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            BottomCard()
          ],
        ),
      ),
    ));
  }
}

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 210,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 30.0,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(40)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [Colors.pink, Colors.purple],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 15, 2, 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.purple[400],
                      radius: 35,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/originals/17/1e/e7/171ee7a7a6a237869827a5b93aec2920.jpg"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Kate Larson",
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                        Text(
                          "3 minuits ago",
                          style: TextStyle(color: Colors.white60, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 20, 5),
                    height: 40,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Icon(
                      CupertinoIcons.heart_solid,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 250,
              child: Text(
                "👋 Hey, Mia! Glad to see you here again 😊 Let's go for a run ?",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 10, 6, 5),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text(
                        "Decline",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(6, 10, 15, 5),
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text(
                        "Accept",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[700],
              blurRadius: 35.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      margin: EdgeInsets.all(25),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Search for sport buddies in real time',
          fillColor: Colors.black54,
          suffixIcon: Icon(
            Icons.swap_vert,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.filestackcontent.com/qfzkumr0RE27pdC8tqeH"),
              fit: BoxFit.cover)),
    );
  }
}
