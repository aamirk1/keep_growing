import 'package:flutter/material.dart';
import 'package:keep_growing/view/sample.dart';

class NameEmailScreen extends StatefulWidget {
  const NameEmailScreen({super.key});

  @override
  State<NameEmailScreen> createState() => _NameEmailScreenState();
}

class _NameEmailScreenState extends State<NameEmailScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

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
            Container(
              alignment: Alignment.bottomLeft,
              child: BackButton(
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.all(
                      0.0,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
              ),
            ),
            const Text(
              "Get started on your investment journey!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25.0, bottom: 5.0),
              child: const Row(
                children: [
                  Text(
                    "Enter Full Name*",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            TextField(
              onChanged: (value) {
                if (value.length > 2) {
                  setState(() {});
                }
              },
              controller: _nameController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                hintText: "Enter your full name (as per PAN)",
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
            Container(
              margin: const EdgeInsets.only(top: 25.0, bottom: 5.0),
              child: const Row(
                children: [
                  Text(
                    "Enter E-mail*",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: _emailController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                hintText: "Enter your email id",
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
            const SizedBox(
              height: 50,
            ),
            Opacity(
              opacity: (_emailController.text.isNotEmpty &&
                      _nameController.text.isNotEmpty)
                  ? 1.0
                  : 0.5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SamplePage()));
                },
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
                    "Next",
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
