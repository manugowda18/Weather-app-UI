import 'package:flutter/material.dart';

class InfoSearchCard extends StatelessWidget {
  InfoSearchCard(
      {required this.name,
      required this.temp,
      required this.weather,
      required this.color});
  final String name;
  final double temp;
  final String weather;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 13.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 140.0,
            height: 80.0,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$temp°C',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      weather,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('icons/sun/8.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
