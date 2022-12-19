import 'package:flutter/material.dart';

import '../constants.dart';
import '../Components/reusablecard.dart';
import '../Components/infocard.dart';
import '../Components/weathercard.dart';

// ignore: camel_case_types
class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Text(
                      'San Fransisco',
                      style: kHeadingText,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Container(
                  child: Center(
                    child: Text(
                      'May 28 2021',
                      style: kDateTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableButton(text: 'Forecast'),
                ReusableButton(text: 'Air Quality'),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              'icons/sun/8.png',
              width: 900.0,
              height: 900.0,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(
                  headingText: 'Temp',
                  text: '32°',
                ),
                InfoCard(
                  headingText: 'Wind',
                  text: '10 km/h',
                ),
                InfoCard(
                  headingText: 'Humidity',
                  text: '75%',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View Full report',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            width: double.infinity,
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WeatherCard(),
                WeatherCard(),
                WeatherCard(),
                WeatherCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
