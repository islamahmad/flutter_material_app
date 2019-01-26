import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app and buttom bars +1',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("App&Bottom Bar +1"),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => debugPrint("send Pressed")),
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => debugPrint("search Pressed")),
            ],
          ),
          backgroundColor: Colors.amberAccent.shade100,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add), title: Text("add")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.delete), title: Text("remove")),
            ],
            onTap: (int i) => debugPrint("tapped on $i"),
            iconSize: 33.0,
            type: BottomNavigationBarType.fixed,
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => debugPrint("FAB pressed"),
              foregroundColor: Colors.deepPurpleAccent,
              backgroundColor: Colors.lightGreen,
              child: Icon(
                Icons.plus_one,
                color: Colors.yellowAccent,
              )),
          body: Container(
            padding: EdgeInsets.all(25.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "just a text , not a button",
                  style: TextStyle(
                      fontSize: 24.0,
                      decoration: TextDecoration.underline,
                      color: Colors.red),
                ),
                InkWell(
                  onTap: () => debugPrint("InkWell pressed"),
                  child: Text(
                    "InkWell Text, can be a button, i.e. has onTap",
                    style: TextStyle(color: Colors.pink),
                  ),
                  borderRadius: BorderRadius.circular(4.5),
                  highlightColor: Colors.deepPurple,
                  splashColor: Colors.lightBlue,
                ),
                Center(
                  child: cutomeButton(),
                ),
              ],
            ),
          )),
    );
  }
}

class cutomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String message = '';
    int millis = 90000;
    return GestureDetector(
      onTap: () {
        message = "Tap Detected";
        final snackBar = SnackBar(
          content: Text(message),
          duration: Duration(microseconds: millis),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onDoubleTap: () {
        message = "Double Tapped!";
        final snackBar = SnackBar(
          content: Text(message),
          duration: Duration(microseconds: millis),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onLongPress: () {
        message = "Why the long press?";
        final snackBar = SnackBar(
          content: Text(message),
          duration: Duration(microseconds: millis),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(5.5))),
        child: Text("let' Go"),
      ),
    );
  }
}
