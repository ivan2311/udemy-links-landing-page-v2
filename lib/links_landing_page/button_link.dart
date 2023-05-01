import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key key,
    @required this.title,
    @required this.url,
  }) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: SizedBox(
            width: width > 680 ? 680 : width * 0.95,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 25),
                foregroundColor: Colors.tealAccent,
              ),
              onPressed: () => launch(url),
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        );
      },
    );
  }
}
