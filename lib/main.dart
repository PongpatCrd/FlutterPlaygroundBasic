import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StatelessExample()
  ));
}

class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This Is PlayGround'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Hello'),
                Text('World!')
              ],
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(40.0),
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Padding text'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Text('Hi1'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.red,
              child: Container(child: Text('Hi22222')),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.amber,
              child: Text('Hi33333333'),
            ),
          ],
        ),
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Text('Hello World!'),
      //     FlatButton(
      //       onPressed: () {} ,
      //       color: Colors.amber,
      //       child: Text("Click me!")
      //     ),
      //     Container(
      //       color: Colors.greenAccent,
      //       padding: EdgeInsets.all(50.0),
      //       child: Text('Inside container'),
      //     )
      //   ],
      // ),
      // body: Padding(
      //   padding: EdgeInsets.all(20.0),
      //   child: Text("Hello!"),
      // ),
      // body: Container(
      //   // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 15.0, 30.0),
      //   margin: EdgeInsets.all(50.0),
      //   color: Colors.grey[400],
      //   child: Text("Hello!"),
      // ),
    // body: Center(
        // child: Text(
        //   'This is me!!',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontFamily: 'IndieFlower-Regular'
        //   ),
        // ),
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.blue,
        //   size: 50.0,
        // )
        // child: RaisedButton(
        //   onPressed: () {
        //     print("Click!");
        //   },
        //   child: Text('text button'),
        //   color: Colors.lightBlue,
        // ),
        // child: RaisedButton.icon(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.access_alarm
        //   ),
        //   label: Text('Alarm!'),
        //   color: Colors.amber,
        // ),
        // child: IconButton(
        //   icon: Icon(
        //     Icons.account_balance_wallet
        //   ), 
        //   color: Colors.greenAccent,
        //   onPressed: () {
        //     print("Click!");
        //   }
        // ),
      // ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: 
      Text('Click Me!',
        textAlign: TextAlign.center,
        ),
      backgroundColor: Colors.red,
      ),
    );
  }
}