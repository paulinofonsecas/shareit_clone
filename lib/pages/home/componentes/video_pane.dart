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
                  height: double.infinity,
                  child: Image.asset(
                    'assets/$img',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
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
