import 'package:flutter/material.dart';

class HomeIconButton extends StatefulWidget {
  String image;
  String text;
  HomeIconButton({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  State<HomeIconButton> createState() => _HomeIconButtonState();
}

class _HomeIconButtonState extends State<HomeIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 10))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25),
                child: Image(
                  image: AssetImage(widget.image),
                ),
              ),
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
