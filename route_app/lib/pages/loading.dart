import 'package:flutter/material.dart';
import 'package:route_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

String time = 'loading'; 

  void getTime() async{
    WorldTime worldTime =  WorldTime(url:'', location:'', time:'');
    await worldTime.getTime(); 
    print(worldTime.time);
    setState(() {
      time=worldTime.time; 
    });
  }


  @override
  void initState(){
    super.initState();
    print("Init state");
    getTime();
    print(":P");
  }

  @override
  Widget build(BuildContext context) {
    print("building");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time)
      )
    );
  }
}
