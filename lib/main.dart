import 'package:flutter/material.dart';
import 'package:flutter_playground_basic/pages/choose_location.dart';
import 'package:flutter_playground_basic/pages/loading.dart';

import 'quote.dart';
import 'quote_card.dart';

// import 'pages/home.dart';
import 'package:flutter_playground_basic/pages/home.dart';
import 'package:flutter_playground_basic/pages/choose_location.dart';
import 'package:flutter_playground_basic/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/'        : (context) => Loading(),
      '/home'    : (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}





// void main() {
//   runApp(MaterialApp(
//     home: QuoteList()
//   ));
// }

// class QuoteList extends StatefulWidget {
//   @override
//   _QuoteListState createState() => _QuoteListState();
// }

// class _QuoteListState extends State<QuoteList> {

//   // List<String> quotes = [
//   //   'Oppa ma ma!',
//   //   'Kin kaow ru yang?',
//   //   'Durain is so smelly'
//   // ];

//   List<Quote> quotes = [
//     Quote(text: 'Quote1', author: 'Author1'),
//     Quote(text: 'Quote2', author: 'Author2'),
//     Quote(text: 'Quote3', author: 'Author3'),
//   ];

//   // Widget quoteTemplate(quote){
//   //   return QuoteCard(quote: quote);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[100],
//       appBar: AppBar(
//         title: Text(
//           'Awesome Quotes!'
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.green
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         // children: quotes.map((quote) {
//         //   return Text(quote);
//         // }).toList(),
//         // children: quotes.map((quote) => Text(quote)).toList(),
//         // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
//         // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//         children: quotes.map((quote) => QuoteCard(
//           quote: quote,
//           delete: () {
//             setState(() {
//               quotes.remove(quote);
//             });
//           }
//         )).toList(),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: IdCardFul()
//   ));
// }

// class IdCardLess extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[50],
//       appBar: AppBar(
//         title: Text('ID Card'),
//         centerTitle: true,
//         backgroundColor: Colors.amber[800],
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/crow1.jpg'),
//                 radius: 30.0,
//               ),
//             ),
//             Divider(
//               height: 70.0,
//               color: Colors.black,
//             ),
//             Text(
//               'Name',
//               style: TextStyle(
//                 color: Colors.amber[600],
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'Pop Dilan',
//               style: TextStyle(
//                 color: Colors.deepOrange,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Current Level',
//               style: TextStyle(
//                 color: Colors.amber[600],
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               '0',
//               style: TextStyle(
//                 color: Colors.deepOrange,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.email,
//                   color: Colors.amber[400],
//                 ),
//                 SizedBox(width: 10.0),
//                 Text(
//                   'pop.dil@gmail.com',
//                   style: TextStyle(
//                     color: Colors.amber[400],
//                     fontSize: 18.0,
//                     letterSpacing: 2.0
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       )
//     );
//   }
// }


// class IdCardFul extends StatefulWidget {
//   @override
//   _IdCardFulState createState() => _IdCardFulState();
// }

// class _IdCardFulState extends State<IdCardFul> {

//   int level = 2;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[50],
//       appBar: AppBar(
//         title: Text('ID Card'),
//         centerTitle: true,
//         backgroundColor: Colors.amber[800],
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             level += 1;
//           });
//         },
//         child: Icon(
//           Icons.add
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/crow1.jpg'),
//                 radius: 30.0,
//               ),
//             ),
//             Divider(
//               height: 70.0,
//               color: Colors.black,
//             ),
//             Text(
//               'Name',
//               style: TextStyle(
//                 color: Colors.amber[600],
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'Pop Dilan',
//               style: TextStyle(
//                 color: Colors.deepOrange,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Current Level',
//               style: TextStyle(
//                 color: Colors.amber[600],
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               '$level',
//               style: TextStyle(
//                 color: Colors.deepOrange,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.email,
//                   color: Colors.amber[400],
//                 ),
//                 SizedBox(width: 10.0),
//                 Text(
//                   'pop.dil@gmail.com',
//                   style: TextStyle(
//                     color: Colors.amber[400],
//                     fontSize: 18.0,
//                     letterSpacing: 2.0
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       )
//     );
//   }
// }


// Test widget
// void main() {
//   runApp(MaterialApp(
//     home: StatelessExample()
//   ));
// }

// class StatelessExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('This Is PlayGround'),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//       ),
//       body: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 3,
//             child: Image.asset('assets/crow1.jpg')
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               padding: EdgeInsets.all(10.0),
//               color: Colors.amber,
//               child: Text('1'),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               padding: EdgeInsets.all(10.0),
//               color: Colors.red,
//               child: Text('2'),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//               child: Container(
//               padding: EdgeInsets.all(10.0),
//               color: Colors.orange,
//               child: Text('3'),
//             ),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Text('Hello'),
//                 Text('World!')
//               ],
//             ),
//             Center(
//               child: Container(
//                 padding: EdgeInsets.all(40.0),
//                 color: Colors.amber,
//                 child: Padding(
//                   padding: EdgeInsets.all(10.0),
//                   child: Text('Padding text'),
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(20.0),
//               color: Colors.blue,
//               child: Text('Hi1'),
//             ),
//             Container(
//               padding: EdgeInsets.all(20.0),
//               color: Colors.red,
//               child: Container(child: Text('Hi22222')),
//             ),
//             Container(
//               padding: EdgeInsets.all(20.0),
//               color: Colors.amber,
//               child: Text('Hi33333333'),
//             ),
//           ],
//         ),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text('Hello World!'),
//           FlatButton(
//             onPressed: () {} ,
//             color: Colors.amber,
//             child: Text("Click me!")
//           ),
//           Container(
//             color: Colors.greenAccent,
//             padding: EdgeInsets.all(50.0),
//             child: Text('Inside container'),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Text("Hello!"),
//       ),
//       body: Container(
//         // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
//         padding: EdgeInsets.fromLTRB(10.0, 20.0, 15.0, 30.0),
//         margin: EdgeInsets.all(50.0),
//         color: Colors.grey[400],
//         child: Text("Hello!"),
//       ),
//     body: Center(
//         child: Text(
//           'This is me!!',
//           style: TextStyle(
//             fontSize: 20.0,
//             fontFamily: 'IndieFlower-Regular'
//           ),
//         ),
//         child: Icon(
//           Icons.airport_shuttle,
//           color: Colors.blue,
//           size: 50.0,
//         )
//         child: RaisedButton(
//           onPressed: () {
//             print("Click!");
//           },
//           child: Text('text button'),
//           color: Colors.lightBlue,
//         ),
//         child: RaisedButton.icon(
//           onPressed: () {},
//           icon: Icon(
//             Icons.access_alarm
//           ),
//           label: Text('Alarm!'),
//           color: Colors.amber,
//         ),
//         child: IconButton(
//           icon: Icon(
//             Icons.account_balance_wallet
//           ), 
//           color: Colors.greenAccent,
//           onPressed: () {
//             print("Click!");
//           }
//         ),
//       ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: () {},
//       child: 
//       Text('Click Me!',
//         textAlign: TextAlign.center,
//         ),
//       backgroundColor: Colors.red,
//       ),
//     );
//   }
// }