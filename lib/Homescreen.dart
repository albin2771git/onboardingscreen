import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "OnBoardingScreen",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: IntroductionScreen(
        dotsFlex: 3,
        dotsDecorator:
            const DotsDecorator(color: Colors.black, activeColor: Colors.blue),
        globalBackgroundColor: Colors.white,
        showNextButton: true,
        next: Text(
          "Next",
          style: TextStyle(color: Colors.blue),
        ),
        showBackButton: true,
        back: Icon(Icons.arrow_back),
        done: Text("done"),
        onDone: () {},
        pages: [
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.all(30),
                child: Image(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/5800782/pexels-photo-5800782.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load')),
              ),
              title: "onBoarding Screen1",
              body: "Text or Something",
              footer: Text("another footer data")),
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.all(30),
                child: Image(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/7601665/pexels-photo-7601665.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load')),
              ),
              title: "onBoarding Screen1",
              body: "Text or Something",
              footer: Text("another footer data")),
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.all(30),
                child: Image.network(
                  'https://images.pexels.com/photos/7034723/pexels-photo-7034723.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                  fit: BoxFit.cover,
                ),
              ),
              title: "onBoarding Screen1",
              body: "Text or Something",
              footer: Text("another footer data")),
        ],
      ),
    );
  }
}
