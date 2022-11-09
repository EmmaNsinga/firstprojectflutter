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
                titleWidget: const Text(
                  "Bienvenu(e) dans E-report App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    // color: Color.fromRGBO(158, 79, 194, 0)
                  ),
                ),
                body:
                    "L'application qui vous permet de mettre en securité vos rapports de service",
                image: Image.asset(
                  "assets/Personal site-rafiki.png",
                  height: 400,
                  width: 400,
                )),
            PageViewModel(
                titleWidget: const Text(
                  "E-report App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                body:
                    "E-report vous offre un espace convivial pour prendre vos notes en prédication sans en perdre le moindre detail ",
                image: Image.asset(
                  "assets/Notebook-rafiki.png",
                  height: 400,
                  width: 400,
                )),
            PageViewModel(
                titleWidget: const Text(
                  "E-report App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                body:
                    "E-report vous permettra de remettre vos rapports de service dans le temps afin de contribuer à la bonne marche de l'organisation",
                image: Image.asset(
                  "assets/Time management-rafiki.png",
                  height: 800,
                  width: 800,
                )),
          ],
          onDone: () {},
          onSkip: () {},
          showSkipButton: true,
          skip: const Text(
            "skip",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(110, 55, 135, 1)),
          ),
          next: const Icon(
            Icons.arrow_forward,
            color: Color.fromRGBO(110, 55, 135, 1),
          ),
          done: const Text(
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
