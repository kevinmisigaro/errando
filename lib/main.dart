import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: OnboardingPage()
    )
  );
 }

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

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
          child: PageView(
            controller: _pageController ,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              _buildPageContent(image: 'assets/images/errando-proper.png', imageScale: 2.1, body: 'Welcome to Errando! Your favorite Service Providers Marketplace', bottomPad: 40.0 ),
              _buildPageContent(image: 'assets/rival/busy.png', imageScale: 0.1, body: 'Clients are able to call up workers to come to them to do tasks, so they can be busy with other things.', bottomPad: 40.0 ),
              _buildPageContent(image: 'assets/rival/worker.png', imageScale: 0.1, body: 'Workers are able to wait to be reached by clients so as to go to them to perform tasks.', bottomPad: 5.0 ),
            ],
          ),
        ),

    bottomSheet: _currentPage != 2 ?  Container(
      height: 100,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          for (int i = 0; i<_totalPages; i++) i == _currentPage ? _buildPageIndicator(true) : _buildPageIndicator(false)
                ],
              ),
            ): Container(
      child: InkWell(
            onTap: () => print('Get Started Now'),
            child: Container(
              height: 90,
              color: Colors.black,
            child: Center(
      child: FlatButton(
    color: Colors.orange,
    textColor: Colors.white,
    disabledColor: Colors.grey,
    disabledTextColor: Colors.black,
    padding: EdgeInsets.fromLTRB(50, 18, 50, 18),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50)
    ),
    splashColor: Colors.deepOrange,
    onPressed: () {
    /*...*/
    },
    child: Text(
    "Get Started Now", textAlign: TextAlign.center,
    style: TextStyle( fontWeight: FontWeight.bold, fontSize: 17),
    ),
    ),
    )
            ),
            ),
    )

    );
  }

  Widget _buildPageContent({String image, double imageScale, String body, double bottomPad}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image, scale: imageScale,),

          Padding(padding: EdgeInsets.symmetric(vertical: bottomPad)),

          Text(body, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 27.0, fontWeight: FontWeight.bold, ),),

//          Padding(padding: EdgeInsets.symmetric(vertical: bottomPad)),

//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              FlatButton(
//                onPressed: null,
//                child: Text('SKIP',
//                  style: TextStyle(color: Colors.white),
//                ),
//              ),
//
//
//              FlatButton(
//                onPressed: null,
//                child: Text('NEXT',
//                  style: TextStyle(color: Colors.white),
//                ),
//              ),
//
//            ],
//          ),

        ],
      ),
    );
  }


}

