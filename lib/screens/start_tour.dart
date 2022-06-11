import 'package:flutter/material.dart';

import '../utils/routes.dart';

class StartTourScreen extends StatelessWidget {
  const StartTourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      _backgroundImage(),
      Column(
        children: [
          SizedBox(
            height: 44,
          ),
          _headerView(),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "We focus a lot on helping the first time or inexperienced traveler head out",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _cardDetailView("assets/images/tickets.png", "Tickets",
                    "Make your booking with Flexifly and enjoy"),
                _cardDetailView("assets/images/hotel.png", "Hotels",
                    "The Ideal Hotel at a Great Price"),
                _cardDetailView("assets/images/adventure.png", "Adventure",
                    "Find & book tours, adventures, activities"),
              ],
            ),
          ),
        ],
      ),
      _bottomView(context),
    ]));
  }

  Widget _backgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/start_tour_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _headerView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Michel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "Alexander",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            flex: 4,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/user.png",
                width: 72,
                height: 72,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _cardDetailView(String imagePath, String title, String description) {
    return Card(
      color: Color.fromRGBO(254, 246, 218, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  imagePath,
                  scale: 1.5,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomView(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/pagination.png",
                scale: 1.5,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.tourNowRoute);
                },
                child: Text(
                  "Start Tour",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
