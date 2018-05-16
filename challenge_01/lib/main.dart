import 'package:flutter/material.dart';
import 'package:challenge_01/theme.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: appTheme,
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Avengers"),
        leading: new IconButton(onPressed: () {}, icon: new Icon(Icons.menu)),
        elevation: 0.0,
      ),
      body: new HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[_headerImage(), _userAvatar(), _content()],
    );
  }

  Image _headerImage() {
    return new Image.asset(
      'assets/avengers.png',
      height: 150.0,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Align _userAvatar() {
    return new Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, right: 16.0),
        child: Avatar(),
      ),
    );
  }

  Padding _content() {
    return new Padding(
      padding: const EdgeInsets.only(top: 160.0, right: 16.0, left: 16.0),
      child: new Column(
        children: <Widget>[
          _title(),
          _subtitle(),
          _readMore(),
          _progressBar(),
          _statistics(),
          _backThisProject()
        ],
      ),
    );
  }

  Padding _title() {
    return new Padding(
      padding: new EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
      child: new Align(
        alignment: Alignment.bottomLeft,
        child: new Text("Avengers: Infinity war",
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Padding _subtitle() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nec libero sed velit gravida mollis vitae et mi.",
        style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Padding _readMore() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(
        "Read more".toUpperCase(),
        style: new TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12.0),
      ),
    );
  }

  Padding _statistics() {
    return new Padding(
      padding: const EdgeInsets.all(25.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Text(
                "\$75,000",
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              new Text("of \$100,000 goal",
                  style: new TextStyle(fontSize: 14.0, color: Colors.grey)),
            ],
          ),
          new Column(
            children: <Widget>[
              new Text(
                "300",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              new Text("backers",
                  style: new TextStyle(fontSize: 14.0, color: Colors.grey)),
            ],
          ),
          new Column(
            children: <Widget>[
              new Text(
                "300",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              new Text("backers",
                  style: new TextStyle(fontSize: 14.0, color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }

  Padding _progressBar() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new LinearProgressIndicator(
        value: 0.75,
        backgroundColor: Colors.grey,
      ),
    );
  }

  Center _backThisProject() {
    return new Center(
        child: new RaisedButton(
            onPressed: () {},
            color: Colors.red,
            textColor: Colors.white,
            child: new Text("Back this project".toUpperCase())));
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: new Border.all(
              color: Colors.white,
              width: 6.0,
            ),
          ),
          child: new CircleAvatar(
            radius: 36.0,
            backgroundImage: AssetImage("rocket.png"),
          ),
        ),
        new Text('Rocket',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))
      ],
    );
  }
}
