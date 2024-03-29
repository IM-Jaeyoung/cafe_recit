import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class TabPage extends StatefulWidget {
  final FirebaseUser user;

  TabPage(this.user);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List _pages = [
    Text('Home page'),
    Text('Map page'),
    Text('Account page'),
  ];

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cafe Recit',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
          ),
        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.exit_to_app),
//            onPressed: () {
//              FirebaseAuth.instance.signOut();
//              _googleSignIn.signOut();
//            },
//          )
//        ],
      ),
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Map')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Account'))
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
