import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  final int _currentPage = 0;
  var i;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 375),
      margin: EdgeInsets.symmetric(horizontal: 21),
      height: isCurrentPage ? 10 : 6,
      width: isCurrentPage ? 10 : 6,
      decoration: BoxDecoration(color: isCurrentPage ? Colors.orange : Colors.white, borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/errando-proper.png'),


            Text('WELCOME TO ERRANDO', style: TextStyle(color: Colors.white),),


            Text('Your favorite Service Providers Marketplace', style: TextStyle(color: Colors.white),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: null,
                  child: Text('SKIP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),


                FlatButton(
                  onPressed: null,
                  child: Text('NEXT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

              ],
            )

          ],
        ),
      ),


      bottomSheet: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (i = 0; i<_totalPages; i++) i == _currentPage ? _buildPageIndicator(true) : _buildPageIndicator(false)
          ],
        ),
      ),

    );
  }
}