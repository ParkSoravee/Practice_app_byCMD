import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _title = "CM Workshop";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
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
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(
        top: 70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Website & Videos"),
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCardListView(
                  url:
                      'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg',
                ),
                _buildCardListView(
                  url:
                      'https://www.pressgazette.co.uk/wp-content/uploads/2020/11/shutterstock.jpg',
                ),
                _buildCardListView(
                  url:
                      'https://c.tadst.com/gfx/600x337/moon-photography-camera.jpg?1',
                ),
                _buildCardListView(
                  url:
                      'https://imagevars.gulfnews.com/2020/03/11/Reader-picture_170c9c693f4_original-ratio.jpg',
                ),
              ],
            ),
          )
        ],
      ),
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

Card _buildCardListView({String url}) {
  return Card(
    child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: url)
  );
}
