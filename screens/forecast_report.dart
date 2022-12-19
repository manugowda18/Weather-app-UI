import 'package:flutter/material.dart';

import '../constants.dart';
import '../Components/weathercard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForecastReport(),
    );
  }
}

class ForecastReport extends MyApp {
  final List<String> weeks = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<int> temperatures = [32, 33, 34, 31, 29, 28, 30];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(80.0, 80.0, 80.0, 25.0),
              child: Text(
                'Forecast report',
                style: kHeadingText,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'August 22, 2021',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90.0,
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  WeatherCard(),
                  SizedBox(width: 10.0),
                  WeatherCard(),
                  SizedBox(width: 10.0),
                  WeatherCard(),
                  SizedBox(width: 10.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Text(
                      'Next forecast',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 390,
              //height: 435,
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: weeks.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    color: Color(0xff14123c),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text(
                                '${weeks[index]}',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'August, 25',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '${temperatures[index]}°C',
                            style: TextStyle(
                              fontSize: 28.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Image(
                            image: AssetImage('icons/sun/8.png'),
                            height: 80.0,
                            width: 80.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
