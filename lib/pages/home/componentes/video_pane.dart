import 'package:flutter/material.dart';

class VideoPane extends StatelessWidget {
  const VideoPane({
    Key key,
    @required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.45,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/$img',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: CustomPlayIcon(
                    icon: Icons.play_arrow,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Watch a whole lot more online short in your language',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('SHAREit'),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.message_outlined),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomPlayIcon extends StatelessWidget {
  const CustomPlayIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(90),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
