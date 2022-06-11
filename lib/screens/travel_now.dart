import 'package:flutter/material.dart';

class TravelNowScreen extends StatelessWidget {
  const TravelNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 249, 247, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44,
                ),
                _headerView(),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      "Let’s",
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "travel",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "now",
                      style: TextStyle(fontSize: 32),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "The Now Lets Travel Store specialises in great deals on holidays",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 24,
                ),
                _searchBoxView(),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.orange,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    _recommendationCardView(
                        "assets/images/mountain.png", "Mountain", "Nepal"),
                    _recommendationCardView(
                        "assets/images/lake.png", "Lake", "India"),
                  ],
                )
              ]),
        ),
      ),
    );
  }

  Widget _headerView() {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            "assets/images/user_with_green_bg.png",
            width: 72,
            height: 72,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Michel",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Alexander",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
        Expanded(
          child: Container(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/hamburger.png",
              width: 28,
              height: 28,
            ),
          ),
        )
      ],
    );
  }

  Widget _searchBoxView() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(174, 213, 210, 1)),
              contentPadding: EdgeInsets.all(16),
              suffixIcon: Icon(Icons.search, color: Colors.black87)),
        ));
  }

  Widget _recommendationCardView(
      String imagePath, String scenryName, String placeName) {
    return Expanded(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          scenryName,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          placeName,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
