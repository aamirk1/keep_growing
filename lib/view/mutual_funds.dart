import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:keep_growing/view/filter.dart';

class MututalFunds extends StatefulWidget {
  const MututalFunds({super.key});

  @override
  State<MututalFunds> createState() => _MututalFundsState();
}

class _MututalFundsState extends State<MututalFunds> {
  final carouselController = FlutterCarouselController();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 36, 42),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15.0,
              ),
              child: Row(
                children: [
                  const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "News",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Color.fromARGB(
                        255,
                        45,
                        46,
                        53,
                      ),
                      child: Icon(
                        Icons.alarm_add_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Color.fromARGB(
                          255,
                          45,
                          46,
                          53,
                        ),
                        child: Badge(
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 46, 53),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.sizeOf(context).height * 0.8,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                  255,
                  45,
                  46,
                  53,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    20,
                  ),
                  topRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                children: [
                  const TabBar(
                      indicatorColor: Color.fromARGB(255, 83, 57, 196),
                      dividerColor: Color.fromARGB(255, 35, 36, 42),
                      indicatorWeight: 3,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      padding: EdgeInsets.all(5.0),
                      dividerHeight: 3,
                      tabs: [
                        Tab(
                          child: Text(
                            "Stocks",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "F&O",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Mututal Funds",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ]),
                  Expanded(
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  fillColor:
                                      const Color.fromARGB(255, 35, 36, 42),
                                  filled: true,
                                  hintText: "Search for 'Quant",
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.11,
                                margin: const EdgeInsets.only(top: 10.0),
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 15.0,
                                    right: 15.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 50, 77, 109),
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Current Value",
                                          style: TextStyle(
                                            height: 1.4,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "\$12,662",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "Total Returns",
                                          style: TextStyle(
                                            height: 1.6,
                                            color: Colors.white,
                                          ),
                                        ),
                                        RichText(
                                            text: const TextSpan(children: [
                                          TextSpan(
                                            text: "\$2,462 ",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "(+24.14%)",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 11, 161, 79),
                                              fontSize: 16,
                                            ),
                                          )
                                        ]))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  color: const Color.fromARGB(255, 35, 36, 42),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 15.0),
                                      child: const Text(
                                        "Most Bought SIPs",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10.0, left: 10.0, right: 10.0),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.2,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            padding: const EdgeInsets.all(
                                              10.0,
                                            ),
                                            margin: const EdgeInsets.only(
                                                right: 20.0),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.6,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey.shade600,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10.0,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: const TextSpan(
                                                    children: [
                                                      WidgetSpan(
                                                        alignment:
                                                            PlaceholderAlignment
                                                                .middle,
                                                        child: Icon(
                                                          Icons.money,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                          width: 10.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "HDFC small Cap Fund",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                height:
                                    MediaQuery.sizeOf(context).height * 0.19,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 35, 36, 42),
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 20.0),
                                      child: const Text(
                                        "Top Picks",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.13,
                                      child: ListView.builder(
                                        itemExtent: 100,
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.abc,
                                                color: Colors.white,
                                                size: 40,
                                              ),
                                              Text(
                                                "SIP with\n \$100",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              // Explore Mutual Funds Part

                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(top: 10.0),
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  left: 15.0,
                                  right: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 35, 36, 42),
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Explore Mutual Funds",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              height: 2.5),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const FilterScreen(),
                                              ),
                                            );
                                          },
                                          child: Image.asset(
                                            "assets/images/filter.png",
                                            height: 18,
                                            width: 18,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "Select Quick Filters",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          const EdgeInsets.only(bottom: 10.0),
                                      height: 45,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 3,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            padding: const EdgeInsets.only(
                                                left: 10.0, right: 10.0),
                                            margin: const EdgeInsets.only(
                                              right: 10.0,
                                              top: 10.0,
                                            ),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                30.0,
                                              ),
                                            ),
                                            child: const Text(
                                              "High Return Small Cap",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Funds",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          "3Y Returns <>",
                                          style: TextStyle(color: Colors.blue),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.52,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        itemCount: 5,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            padding: const EdgeInsets.only(
                                              bottom: 15.0,
                                              top: 15.0,
                                            ),
                                            decoration: const BoxDecoration(
                                                border: Border(
                                              bottom: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 91, 91, 91),
                                              ),
                                            )),
                                            child: const Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.accessibility_new,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Regular ● Growth",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Motilal Oswal Midcap Fund",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                    Text(
                                                      "Min. SIP Amount \$500",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Spacer(),
                                                Text(
                                                  "35% p.a",
                                                  style: TextStyle(
                                                    color: Colors.greenAccent,
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(
                                  10.0,
                                ),
                                height: 100,
                                margin: const EdgeInsets.only(top: 10.0),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 35, 36, 42),
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                                child: const ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(
                                      Icons.thunderstorm,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  title: Text(
                                    "Become a Crorepati!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  subtitle: Text(
                                    "Hom much should you invest to\nbecome a Crorepati? Calculate now",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(),
                      Container()
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 35, 36, 42),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customButtons(
                    "DISCOVER",
                    Icons.circle,
                  ),
                  customButtons(
                    "PORTFOLIO",
                    Icons.currency_rupee,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  customButtons(
                    "SIPS",
                    Icons.savings_outlined,
                  ),
                  customButtons(
                    "ORDERS",
                    Icons.note_alt_outlined,
                  ),
                ],
              ),
              Positioned(
                height: 50,
                width: 50,
                left: MediaQuery.sizeOf(context).width * 0.44,
                top: 0,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 40, 45, 84),
                  shape: const CircleBorder(),
                  onPressed: () {},
                  child: const Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customButtons(String title, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
