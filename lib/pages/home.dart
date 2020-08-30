import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    if(data.isEmpty) {
      data = ModalRoute.of(context).settings.arguments;
    }
    // print(data);

    // background
    String bgImageUse = data['isDayTime'] ? 'day_forest_img.jpeg' : 'night_forest_img.jpg';
    Color bgColor = data['isDayTime'] ? Colors.black : Colors.cyanAccent[400];

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImageUse'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time'     : result['time'],
                        'location' : result['location'],
                        'isDayTime': result['isDayTime'],
                        'avatar'   : result['avatar']
                      };
                    });
                  }, 
                  icon: Icon(
                    Icons.edit_location,
                    size: 35.0,
                    color: bgColor,
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: bgColor
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: bgColor
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: bgColor
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}