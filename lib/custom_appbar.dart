import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.search,
          ),
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://qph.fs.quoracdn.net/main-raw-160579021-obaxaamtbbfzqtgtgpbwxcorldpmqdsh.jpeg"))),
          ),
        ],
      ),
    );
  }
}
