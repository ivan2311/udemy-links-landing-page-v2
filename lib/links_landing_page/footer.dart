import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Made in Flutter',
          style: TextStyle(fontSize: 19),
        ),
        SizedBox(width: 8),
        Image.network(
          'https://cdn.dribbble.com/users/6233776/screenshots/14433953/media/f12a4d762078538c4a59b524ef5c9962.png?compress=1&resize=400x300&vertical=top',
          width: 25,
        )
      ],
    );
  }
}
