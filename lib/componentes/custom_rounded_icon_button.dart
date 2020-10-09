import 'package:flutter/material.dart';


class CustomRoundedIconButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  final IconData icon;

  const CustomRoundedIconButton({
    Key key,
    this.onTap,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(90),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 22,
                color: Colors.blue,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}