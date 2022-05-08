import 'package:crypmoney/components/home_container_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../components/bottom_navbar.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: GestureDetector(
          onTap: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) {
            //  return const HomePage();
            //}));
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 25),
            child: Image.asset(
              "images/logo.png",
              height: 75,
              width: 75,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: Center(
        child: Stack(
          children: [
            Transform.rotate(
              origin: Offset(30, -60),
              angle: 2.4,
              child: Container(
                margin: EdgeInsets.only(
                  left: 75,
                  top: 40,
                ),
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [Color(0xffFD8BAB), Color(0xFFFD44C4)],
                    )),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: const Center(
                    child: Text(
                      "Crypit.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text(
                  DateFormat('dd ,MMM yyyy').format(DateTime.now()),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 11, 13, 14),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeIconButton(
                      image: "images/topcoin.png",
                      text: "Top Coins",
                    ),
                    HomeIconButton(
                      image: "images/gainlose.png",
                      text: "Gainers & Losers",
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeIconButton(
                      image: "images/discover.png",
                      text: "Discover",
                    ),
                    HomeIconButton(
                      image: "images/converter.png",
                      text: "Converter",
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
