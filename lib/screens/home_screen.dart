import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'mobile.dart';
import 'handfree vs bluetooth.dart';
import 'mobile phone vs tablets.dart';
import 'laptop vs desktop.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String, List<Map<String, dynamic>>> _blogs = {
    'Tech Blog': [
      {
        'title': 'Mobile Phone',
        'image': 'assets/images/black_mobile.jpg',
        'screen': Mobilephone()
      },
      {
        'title': 'Handfrees vs Bluetooth Earbuds',
        'image': 'assets/images/bt.jpg',
        'screen': handfree()
      },
      {
        'title': 'Mobile Phone vs Tablets',
        'image': 'assets/images/mb_vs_tb.jpg',
        'screen': tablets()
      },
      {
        'title': 'Laptop vs Desktop PC',
        'image': 'assets/images/lp_vs_dsk.jpg',
        'screen': Desktop()
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tech Blog'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Text('Menu',
                    style: TextStyle(color: Colors.grey, fontSize: 24)),
              ),
              ListTile(
                title: Text('Profile', style: TextStyle(color: Colors.grey)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),
              ListTile(
                title: Text('Contact', style: TextStyle(color: Colors.grey)),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Contact Us'),
                        content: Text('Please do not contact us '),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Thank you'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ListTile(
                title: Text('Settings', style: TextStyle(color: Colors.grey)),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(title: Text('Agy kuch ni hei'));
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: _blogs.values
              .expand((list) => list)
              .map((story) => _buildCategoryBox(
              story['image'], story['title'], story['screen']))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildCategoryBox(String imagePath, String title, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}