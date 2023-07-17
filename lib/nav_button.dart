import 'package:flutter/material.dart';

class NavButtom extends StatelessWidget {
  bool selected;
  final String img;
  NavButtom({
    super.key,
    this.selected = false,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Image.asset(img),
    );
  }
}

class NavBtn {
  String img;
  bool selected;
  NavBtn({required this.img, required this.selected});
}
