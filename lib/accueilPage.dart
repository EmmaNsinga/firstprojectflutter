import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({Key? key}) : super(key: key);

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            PageViewModel(
                titleWidget: Text(
                  "Bienvenue dans E-report",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    // color: Color.fromRGBO(158, 79, 194, 0)
                  ),
                ),
                body:
                    "nous allons partir avec aisance nous allons partir avec aisance nous allons partiravec aisance nous allons partir avec aisance",
                image: Image.asset(
                  "assets/Personal site-rafiki.png",
                  height: 400,
                  width: 400,
                )),
            PageViewModel(
                titleWidget: Text(
                  "e-report",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body:
                    "nous allons partir avec aisance nous allons partir avec aisance nous allons partiravec aisance nous allons partir avec aisance",
                image: Image.asset(
                  "assets/Notebook-rafiki.png",
                  height: 400,
                  width: 400,
                )),
            PageViewModel(
                titleWidget: Text(
                  "e-report",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body:
                    "nous allons partir avec aisance nous allons partir avec aisance nous allons partiravec aisance nous allons partir avec aisance",
                image: Image.asset(
                  "assets/Time management-rafiki.png",
                  height: 800,
                  width: 800,
                )),
          ],
          onDone: () {},
          onSkip: () {},
          showSkipButton: true,
          skip: Text(
            "skip",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(110, 55, 135, 1)),
          ),
          next: Icon(
            Icons.arrow_forward,
            color: Color.fromRGBO(110, 55, 135, 1),
          ),
          done: Text(
            "Done",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromRGBO(110, 55, 135, 1)),
          ),
          dotsDecorator: DotsDecorator(
              size: Size.square(10.0),
              activeSize: Size(20.0, 10.0),
              color: Colors.black26,
              activeColor: Color.fromRGBO(110, 55, 135, 1),
              spacing: EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              )),
        ),
      ),
    );
  }
}
