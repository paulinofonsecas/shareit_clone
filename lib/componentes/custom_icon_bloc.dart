import 'package:flutter/material.dart';

class CustomIconBloc extends StatelessWidget {
  const CustomIconBloc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 2),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 2),
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 2),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
