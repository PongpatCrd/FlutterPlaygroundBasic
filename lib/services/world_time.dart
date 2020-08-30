import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location;  // location name
  String avatar;  // url to an asset avatar
  String url; // location url for api enpoint
  bool isDayTime;

  String time;  // time in that location

  WorldTime({this.location, this.avatar, this.url});
  
  Future<void> getTime() async {

    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');

      Map data = jsonDecode(response.body);
      // print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      
      // print('${datetime} ==>  ${offset}');

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now.runtimeType);

      // this.time = now.toString();
      this.isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
      this.time = DateFormat.jm().format(now);
    }
    catch (e) {
      print(e);
      this.time = "Couldn't get time data";
    }

  }

}
