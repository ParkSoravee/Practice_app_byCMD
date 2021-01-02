import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _title = "CM Workshop";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: ListView(
          children: [
            // Text("Hello world123"),
            _headerSection(),
            _titleSection(),
            _buttonSection(),
            _courseSection(),
          ],
        ),
      ),
    );
  }

  Container _headerSection() {
    return Container(
      child: Image.network(
        "https://d25tv1xepz39hi.cloudfront.net/2017-08-21/files/landscape-photography_1645.jpg",
      ),
    );
  }

  Container _titleSection() {
    return Container(
      padding: EdgeInsets.all(50),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Peter Parker",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  "Developer, Thailand",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.thumb_up,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Text("9999"),
          ),
        ],
      ),
    );
  }

  Container _buttonSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(icon: Icons.thumb_up, label: "Like"),
          _buildButtonColumn(icon: Icons.comment, label: "Comment"),
          _buildButtonColumn(icon: Icons.share, label: "Share"),
        ],
      ),
    );
  }

  Container _courseSection() {
    return Container(
      height: 250,
      color: Colors.yellow,
    );
  }

  Column _buildButtonColumn({IconData icon, String label}) {
    var iconColor = Colors.grey.shade500;
    return Column(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
