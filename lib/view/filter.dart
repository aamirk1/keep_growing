import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedIndex = 0;
  List<bool> checkBoxBoolList = [];

  List<dynamic> list1 = [
    "Popular",
    "Asset Class",
    "AMC",
    "Fund Size",
    "3Y Returns",
    "Risk",
    "Investment Type",
    "Fund Type",
    "Expense Ratio",
    "Minimum SIP\nAmount"
  ];

  Map<String, List<String>> popularList = {
    "Asset Class": [
      "Small Cap",
      "Sectoral/Thematic",
      "Mid Cap",
      "Contra",
      "Large Cap",
      "Flexi Cap",
      "Value"
    ],
    "AMC": [
      "Axis Mutual Fund",
      "HDFC Mutual Fund",
      "ICICI Prudentia Mutual Fund",
      "Quant Mutual Fund",
      "SBI Mutual Fund"
    ],
  };

  Map<String, List<String>> filterList = {
    "Asset Class": [
      "Small Cap",
      "Sectoral/Thematic",
      "Mid Cap",
      "Contra",
      "Large Cap",
      "Flexi Cap",
      "Value"
    ],
    "AMC": [
      "Axis Mutual Fund",
      "HDFC Mutual Fund",
      "ICICI Prudentia Mutual Fund",
      "Quant Mutual Fund",
      "SBI Mutual Fund"
    ],
    "Fund Size": ["Upto \$1000 cr"],
    "3Y Returns": ["Select Range"],
    "Risk": ["Low", "Moderately Low", "Moderate", "High", "Very High"],
    "Investment Type": ["SIP", "OTI"],
    "Fund Type": ["Divident", "Growth"],
    "Expense Ratio": [
      "Low(0-0.4)",
      "Mid (0.4 - 1.2)",
      "High (1.2+)",
    ],
    "Minimum SIP": ["₹0 - ₹100", "₹101 - ₹500", "₹501 - ₹1000", "1001+"],
    "Minimum SIP\nAmount": [
      "₹0 - ₹100",
      "₹101 - ₹500",
      "₹501 - ₹1000",
      "1001+"
    ],
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 36, 42),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 36, 42),
        title: const Text(
          "Filter Mutual Funds",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 10.0,
              bottom: 20.0,
              top: 10.0,
            ),
            child: const Text(
              "Selected 1",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(
                    255,
                    33,
                    33,
                    62,
                  ),
                ),
                width: MediaQuery.sizeOf(context).width * 0.35,
                height: MediaQuery.sizeOf(context).height * 0.74,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: list1.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        // height: 40,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.only(
                          left: 15.0,
                          bottom: 10.0,
                          top: 10.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 2,
                              color: selectedIndex == index
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                        child: Text(
                          list1[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.65,
                height: MediaQuery.sizeOf(context).height * 0.74,
                color: const Color.fromARGB(255, 35, 36, 42),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: selectedIndex == 0
                      ? popularList.keys.length
                      : filterList[list1[selectedIndex]]!.length,
                  itemBuilder: (context, index) {
                    String title = filterList.keys.elementAt(index);
                    List<String> dataList = selectedIndex == 0
                        ? popularList[title]!
                        : filterList[list1[selectedIndex]]!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        selectedIndex == 0
                            ? Padding(
                                padding: const EdgeInsets.all(
                                  10.0,
                                ),
                                child: Text(
                                  title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              )
                            : Container(),
                        ...List.generate(
                          selectedIndex == 0 ? popularList[title]!.length : 0,
                          (index) {
                            return Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: false,
                                  onChanged: (value) {
                                    print(checkBoxBoolList);
                                    setState(() {});
                                  },
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.all(8.0),
                                  margin: const EdgeInsets.only(
                                    left: 15.0,
                                    top: 10.0,
                                  ),
                                  child: Text(
                                    dataList[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              value: false,
                              onChanged: (value) {
                                print(checkBoxBoolList);
                                setState(() {});
                              },
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(
                                left: 15.0,
                                top: 10.0,
                              ),
                              child: Text(
                                dataList[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 36, 42),
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 109, 82, 244),
                    ),
                  ),
                  child: const Text(
                    "RESET",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 109, 82, 244),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 109, 82, 244),
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: const Text(
                    "APPLY FILTERS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
