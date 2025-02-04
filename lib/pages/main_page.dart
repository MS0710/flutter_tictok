import 'package:flutter/material.dart';
import 'package:flutter_tictok2/pages/film_detail_page.dart';
import 'package:flutter_tictok2/pages/friend_page.dart';
import 'package:flutter_tictok2/pages/home_page.dart';
import 'package:flutter_tictok2/pages/mail_page.dart';
import 'package:flutter_tictok2/pages/my_info_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold); //textstyle
  static const List<Widget> _widgetOptions = <Widget>[ //用list做 每頁內容
    HomePage(),
    FriendPage(),
    Text(
      'Coming soon',
      style: optionStyle,
    ),
    MailPage(),
    MyInfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
            goMainPage(),
            if(_selectedIndex == 0)
              const FilmDetailPage(),
          ],
        ),
      ),
    );
  }


  Widget goMainPage(){
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), //list拿進來用
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: _selectedIndex == 2 ? Colors.black : Colors.white,
        onTap: (index){
          _onItemTapped(index);
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //label: "Women",
            label: "首頁",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '好友',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              child: const Icon(Icons.add),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '收信夾',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: '個人資料',
          ),
        ],
      ),

    );
  }

  void _onItemTapped(int index) { //onTap換index
    setState(() {
      _selectedIndex = index;
    });
  }

}
