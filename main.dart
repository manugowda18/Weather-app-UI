// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screens/forecast_report.dart';
import 'constants.dart';
import 'screens/picklocation.dart';
import 'screens/mainpage.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  void onPageChanged(int page) {
    setState(() {
      this._selectedIndex = page;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBackgroundColor),
      home: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            mainpage(),
            PickLocationpage(),
            ForecastReport(),
            Center(
                child: Icon(
              Icons.settings,
              color: Colors.white,
            )),
          ],
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   height: 53.0,
        //   color: Colors.blue.withAlpha(7),
        //   backgroundColor: Color(0xFF070a30),
        //   buttonBackgroundColor: Colors.blue,
        //   animationDuration: Duration(milliseconds: 200),
        //   animationCurve: Curves.ease,
        //   items: <Widget>[
        //     Icon(
        //       Icons.home,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.search,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.today,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.settings,
        //       color: Colors.white,
        //     ),
        //   ],
        //   onTap: onTapped,
        // ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: kBackgroundColor),
          child: BottomNavigationBar(
            backgroundColor: Color(0xFF070a30),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Today'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
            onTap: onTapped,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
