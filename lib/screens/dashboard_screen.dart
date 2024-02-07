import 'package:flutter/material.dart';
import 'package:flutter_assigment08/screens/list_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<DashboardScreen> {
  String _title = "To do list";
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ListScreen(),
    // BooksScreen(),
  ];

  void onTapped(int index) {
    setState(
      () {
        _currentIndex = index;
        switch (index) {
          case 0:
            _title = "To do list";
            break;
          case 1:
            _title = "Books";
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot_sharp),
            label: 'To do list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Books',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Books',
          // ),
        ],
        onTap: (value) {
          onTapped(value);
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.amber.shade900,
      ),
    );
  }
}
