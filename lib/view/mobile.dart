import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 41, 170),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
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
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Enter Adhaar Linked Mobile Number",
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
              child: TextField(
                onChanged: (value) {
                  if (value.length == 10) {
                    setState(() {});
                  }
                },
                controller: _controller,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Container(
                    width: 90,
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "assets/images/flag.png",
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text: "+91",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: SizedBox(
                          height: 35,
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ])),
                  ),
                  filled: true,
                  hintText: "Mobile Number",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  "By proceeding, I agree to the T&C",
                  style: TextStyle(color: Colors.white, height: 3),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Opacity(
              opacity: _controller.text.length == 10 ? 1.0 : 0.5,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadiusDirectional.circular(
                        10.0,
                      )),
                  child: const Text(
                    "Proceed",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
