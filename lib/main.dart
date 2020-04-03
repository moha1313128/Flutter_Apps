import 'package:flutter/material.dart';
import 'package:flutter_app/Drawer.dart';
import 'package:getflutter/components/appbar/gf_appbar.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/button/gf_icon_button.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:getflutter/components/drawer/gf_drawer.dart';
import 'package:getflutter/components/drawer/gf_drawer_header.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:getflutter/components/loader/gf_loader.dart';
import 'package:getflutter/components/tabs/gf_segment_tabs.dart';
import 'package:getflutter/components/tabs/gf_tabbar.dart';
import 'package:getflutter/types/gf_button_type.dart';
import 'package:getflutter/types/gf_loader_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    var GFType;
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GFDrawerHeader(
            currentAccountPicture: GFAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
            ),
            otherAccountsPictures: <Widget>[
              Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                fit: BoxFit.cover,
              ),
              GFAvatar(
                child: Text("ME"),
              )
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Mohammed Ettayby'),
                Text('mohammed.ettaibi@edu.uca.ma'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListTile(
              title: Text('Notification'),
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListTile(
              title: Text('Reviwes'),
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListTile(
              title: Text('Payments'),
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListTile(
              title: Text('Settings'),
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListTile(
              title: Text('Profile'),
              onTap: null,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListTile(
              title: Text('Log out'),
              onTap: null,
            ),
          ),
        ],
      )),
      appBar: GFAppBar(
        // backgroundColor: Colors.white,
        leading: GFIconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          type: GFButtonType.transparent,
        ),
        searchBar: true,
        title: Text("Shopping"),
        actions: <Widget>[
          GFIconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
      ),
      body: GFCarousel(
        items: imageList.map(
          (url) {
            return Container(
              margin: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
              ),
            );
          },
        ).toList(),
        onPageChanged: (index) {
          setState(() {
            index;
          });
        },
      ),

      // Card

      // Bottom Navigation Tab
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            title: Text('Feed'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
