import 'package:flutter/material.dart';

class Overview2 extends StatefulWidget {
  const Overview2({Key? key}) : super(key: key);

  @override
  _Overview2State createState() => _Overview2State();
}

class _Overview2State extends State<Overview2> {
  List<String> categories = [
    "Hand Bag",
    "Jewellery",
    "Footwear",
    "Clothes",
    "Electronics"
  ];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_left),
                    Icon(Icons.share),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        "USD 350",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text("TMA-2",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text("HD Wireless",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return buildCategory(index);
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            Container(
              height: 2,
              width: 30,
              color:
                  selectedIndex == index ? Colors.yellow : Colors.transparent,
              margin: const EdgeInsets.only(top: 5),
            )
          ],
        ),
      ),
    );
  }
}
