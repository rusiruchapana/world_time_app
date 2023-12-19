import 'package:http/http.dart' as http;
import 'dart:convert';

class World_time {
  String location = '';
  String flag = '';
  String time = '';
  String url = '';

  World_time(String location, String flag, String url) {
    this.location = location;
    this.flag = flag;
    this.url = url;
  }

  Future<void> getTime() async {
    http.Response response =
        await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = json.decode(response.body);
    String dateTime = data['datetime'];
    String offSet = data['utc_offset'];
    offSet = offSet.substring(1, 3);

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offSet)));

    time = now.toString();
  }
}
