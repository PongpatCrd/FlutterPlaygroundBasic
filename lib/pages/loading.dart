import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter_playground_basic/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // void getTime() async {
  //   Response response = await get('http://worldtimeapi.org/api/timezone/Asia/Bangkok');

  //   Map data = jsonDecode(response.body);
  //   // print(data);

  //   String datetime = data['datetime'];
  //   String offset = data['utc_offset'].substring(1, 3);
    
  //   // print('${datetime} ==>  ${offset}');

  //   DateTime now = DateTime.parse(datetime);
  //   print(now);
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   print(now);
  //   // print(now.runtimeType);
  // }

  // void getData() async {
    
  //   Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    
  //   Map data = jsonDecode(response.body);

  //   print(data['userId']);
  // }

  // String time = "loading";

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Bangkok', avatar: 'bangkok.png', url: 'Asia/Bangkok');

    await instance.getTime();

    // Navigator.pushNamed(context, '/home');  //It will keep loading page in stack
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'avatar'     : instance.avatar,
      'time'     : instance.time,
      'isDayTime': instance.isDayTime
    });  //It will not keep loading page in stack

    // setState(() {
    //   time = instance.time;  
    // });
  }

  @override
  void initState() {
    super.initState();
    
    setupWorldTime();
    // getTime();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: EdgeInsets.all(20.0),
        // child: Text(time),
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ),
      )
    );
  }
}