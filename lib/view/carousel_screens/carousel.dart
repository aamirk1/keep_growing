import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:keep_growing/view/carousel_screens/first.dart';
import 'package:keep_growing/view/mutual_funds.dart';

class CaroselScreen extends StatefulWidget {
  const CaroselScreen({super.key});

  @override
  State<CaroselScreen> createState() => _CaroselScreenState();
}

class _CaroselScreenState extends State<CaroselScreen> {
  final _controller = FlutterCarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 41, 170),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20.0),
                alignment: AlignmentDirectional.centerStart,
                height: 100,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5.0),
                      child: const Icon(
                        Icons.yard_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const Text(
                      "Keep\nGrowing",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        height: 1,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
            FlutterCarousel(
              items: const [
                FirstScreen(
                  image: "",
                  title: "Early access to unique unlisted opportunities",
                ),
                FirstScreen(
                  image: "",
                  title: "Enjoy zero fees,\ncharges or brokerage",
                ),
                FirstScreen(
                  image: "",
                  title: "Team of experts to answer your questions",
                )
              ],
              options: FlutterCarouselOptions(
                viewportFraction: 1,
                controller: _controller,
                padEnds: false,
                height: MediaQuery.sizeOf(context).height * 0.55,
                floatingIndicator: true,
                slideIndicator: CircularWaveSlideIndicator(),
                allowImplicitScrolling: true,
              ),
            ),
            const Text(
              "Trusted By Many Happy Users",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {
                _controller.nextPage();
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                width: MediaQuery.sizeOf(context).width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadiusDirectional.circular(
                      10.0,
                    )),
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MututalFunds(),
                    ));
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
