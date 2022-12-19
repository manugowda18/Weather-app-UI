import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components/infosearchcard.dart';

class PickLocationpage extends StatelessWidget {
  const PickLocationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Text(
                        'Pick Location',
                        style: kHeadingText,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Center(
                      child: Text(
                        'Find the area of the city that you want to know\n      the detailed weather info at this time',
                        style: kinfotextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff222349),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff222349),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.location_pin),
                      iconSize: 35,
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InfoSearchCard(
                          name: 'California',
                          temp: 32,
                          weather: 'Cloudy',
                          color: Colors.blue.shade400,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InfoSearchCard(
                          name: 'California',
                          temp: 45,
                          weather: 'Cloudy',
                          color: knotselectedcolour,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InfoSearchCard(
                          name: 'California',
                          temp: 32,
                          weather: 'Cloudy',
                          color: knotselectedcolour,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InfoSearchCard(
                          name: 'California',
                          temp: 45,
                          weather: 'Cloudy',
                          color: knotselectedcolour,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
