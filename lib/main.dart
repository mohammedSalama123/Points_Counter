import 'package:flutter/material.dart';
import 'package:points_counter/models/modelA.dart';
import 'models/modelB.dart';
main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPointsCounter(),
    );
  }
}

class MyPointsCounter extends StatefulWidget {
  @override
  _MyPointsCounterState createState() => _MyPointsCounterState();
}

class _MyPointsCounterState extends State<MyPointsCounter> {


  TeamA _teamA=TeamA();
  TeamB _teamB=TeamB();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('PointsCounter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(
                      '${_teamA.scoreA}',
                      style: TextStyle(fontSize: 150),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _teamA.increment1PointA();
                        });
                      },
                      child: Text(
                        'Add 1 point',style: TextStyle(fontSize: 24),
                      ),
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _teamA.increment2PointA();
                        });
                      },
                      child: Text(
                        'Add 2 point',style: TextStyle(fontSize: 24),
                      ),
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _teamA.increment3PointA();
                        });
                      },
                      child: Text(
                        'Add 3 point',style: TextStyle(fontSize: 24),
                      ),
                      color: Colors.blue,
                    )
                  ],
                ),
                Container(
                  // height: 350,
                  color: Colors.black,
                  child: VerticalDivider(
                    thickness:1,
                    indent: 5,
                    width: .5,
                    endIndent: 350,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Text('Team B',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(
                      '${_teamB.scoreB}',
                      style: TextStyle(fontSize: 150),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _teamB.increment1pointB();
                        });
                      },
                      child: Text(
                        'Add 1 point',style: TextStyle(fontSize: 24),
                      ),
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _teamB.increment2pointB();
                        });
                      },
                      child: Text(
                        'Add 2 point',style: TextStyle(fontSize: 24),
                      ),
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _teamB.increment3pointB();
                        });
                      },
                      child: Text(
                        'Add 3 point',style: TextStyle(fontSize: 24),
                      ),
                      color: Colors.blue,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _teamA.scoreA=0;
                  _teamB.scoreB=0;
                });
              },
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
              child: Text('Reset',style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }
}
