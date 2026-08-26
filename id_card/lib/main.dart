import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: IdCard()
  )
  );
}


class IdCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          title: Text('Id Card'),
          centerTitle: true,
          backgroundColor: Colors.green[800],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center (
                child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.jpeg'),
                radius: 40.0,
              )
              ),
              Divider(
                height: 60.0,
                color: Colors.green[800]
              ),
              Text('Name:',
                style: TextStyle(
                  color: Colors.green[50],
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text('Chun-Li',
                style: TextStyle(
                  color: Colors.green[200],
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 30.0,),
              Text('Current Ninja Level:',
                style: TextStyle(
                  color: Colors.green[50],
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text('8',
                style: TextStyle(
                  color: Colors.green[200],
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text('chun.li@email.com',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                    )
                    )
                ],
              )
            ],
          ),
          ),
      );
  }

}
