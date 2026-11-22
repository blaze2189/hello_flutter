import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime{

 String url;
 String location;
 String time;

WorldTime({required this.url,required this.location,required this.time});


Future<void> getTime() async{
  try{
  http.Response response = await http.get(Uri.parse('https://time.now/developer/api/time?timezone=Europe%2FLondon'));
  print(response );
  Map date = jsonDecode(response.body);
  print(" :D");
  
  print(date);
  String dateTime = date['datetime'];
  String offset = date ['utc_offset'];
  print(dateTime);
  print(offset);
  time = dateTime;
  }catch(e){
    print(e);
    time = 'Could not get date time';
  }
}

}