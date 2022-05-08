import 'package:flutter/material.dart';
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(                                           
      topRight: Radius.circular(30), topLeft: Radius.circular(30)), 
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.35),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, -5))
        ],
      ),
      height: 70,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(                                           
    topLeft: Radius.circular(30.0),                                            
    topRight: Radius.circular(30.0),                                           
    ),                      
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Image.asset(
                  "images/home.png",
                  //color: Colors.black,
                ),
                iconSize: 15,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //  return const Tournee();
                  //}));
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/wallet.png",
                  //color: Colors.black,
                ),
                iconSize: 15,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //  return const Tournee();
                  //}));
                },
              ),
              const SizedBox(
                width: 75,
              ),
              IconButton(
                icon: Image.asset(
                  "images/chartlogo.png",
                  //color: Colors.black,
                ),
                iconSize: 15,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //  return const HomePage();
                  //}));
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/avatar.png",
                  //color: Colors.black,
                ),
                iconSize: 15,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //  return const PremierPageCovid();
                  //}));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
