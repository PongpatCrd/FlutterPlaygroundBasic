import 'package:flutter/material.dart';
import 'package:flutter_playground_basic/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Bangkok', avatar: 'bangkok_avatar.png', url: 'Asia/Bangkok'),
    WorldTime(location: 'Tokyo', avatar: 'tokyo_avatar.jpg', url: 'Asia/Tokyo'),
    WorldTime(location: 'Seoul', avatar: 'seoul_avatar.jpg', url: 'Asia/Seoul'),
    WorldTime(location: 'London', avatar: 'london_avatar.jpg', url: 'Europe/London')
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context, {
      'location' : instance.location,
      'avatar'     : instance.avatar,
      'time'     : instance.time,
      'isDayTime': instance.isDayTime
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // print('build run');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.5, horizontal: 10.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                  // print(locations[index].location);
                },
                title: Text(
                  locations[index].location,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower-Regular',
                    letterSpacing: 2.0
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].avatar}'),
                ),
              ),
            ),
          );
        }
      )
    );
  }
}

// class _ChooseLocationState extends State<ChooseLocation> {

  // no waiting for function complete
  // void getData() {
  //   // simulate network request for a username
  //   Future.delayed(Duration(seconds: 3), () {
  //     print("get data 1!!");
  //   });

  //   Future.delayed(Duration(seconds: 2), () {
  //     print("get data 2!!");
  //   });

  //   print("get_data_call");
  // }

//   void getData() async {
//     // simulate network request for a username
//     await Future.delayed(Duration(seconds: 3), () {
//       print("get data 1!!");
//     });

//     String word = await Future.delayed(Duration(seconds: 2), () {
//       return "now!!";
//     });

//     print("get_data_call");
//     print(word);
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData();
//     print('state run');
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build run');
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text('Choose a Location'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Text('yeah!!')
//     );
//   }
// }