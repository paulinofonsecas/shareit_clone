import 'package:flutter/material.dart';


class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({
    Key key,
    this.onTap,
    this.title,
    this.icon,
    this.notification,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final String title;
  final IconData icon;
  final List notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      size: 22,
                      color: Colors.white,
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
          ),
          if (notification != null)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${notification.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}