import 'package:flutter/material.dart';
import 'home_tab.dart';
import 'favorites_tab.dart';
import 'map_tab.dart';
import 'more_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '순덕방', // 애플리케이션의 타이틀 설정
      theme: ThemeData(
        primarySwatch: Colors.purple, // 테마의 기본 색상 설정
        appBarTheme: AppBarTheme(
          toolbarTextStyle: TextTheme(
            headline6: TextStyle(
              fontFamily: 'YourHandwrittenFont', // 사용할 손글씨체 폰트 패밀리 설정
              fontWeight: FontWeight.bold,
              fontSize: 20.0, // 폰트 크기 설정
              color: Colors.black, // 폰트 색상 설정
            ),
          ).bodyText2, titleTextStyle: TextTheme(
            headline6: TextStyle(
              fontFamily: 'YourHandwrittenFont', // 사용할 손글씨체 폰트 패밀리 설정
              fontSize: 20.0, // 폰트 크기 설정
              fontWeight: FontWeight.bold,
              color: Colors.black, // 폰트 색상 설정
            ),
          ).headline6,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.deepPurple, // 선택된 아이콘과 글자의 색상을 파란색으로 설정
          unselectedItemColor: Colors.purple, // 선택되지 않은 아이콘과 글자의 기본 색상을 회색으로 설정
          backgroundColor: Colors.black, // 탭바의 배경색을 검정색으로 설정
        ),
      ),
      home: MyHomePage(), // 애플리케이션의 홈 화면 설정
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    FavoritesTab(),
    MapTab(),
    MoreTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('순덕방'), // 상단 앱 바의 타이틀 설정
        centerTitle: true, // 타이틀을 가운데로 정렬
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), // 현재 선택된 탭의 화면 표시
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // 홈 아이콘 설정
            label: '홈', // 홈 탭의 라벨 설정
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // 관심목록 아이콘 설정
            label: '관심목록', // 관심목록 탭의 라벨 설정
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map), // 지도 아이콘 설정
            label: '지도', // 지도 탭의 라벨 설정
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz), // 더보기 아이콘 설정
            label: '더보기', // 더보기 탭의 라벨 설정
          ),
        ],
        currentIndex: _selectedIndex, // 현재 선택된 탭의 인덱스
        onTap: _onItemTapped, // 탭이 선택될 때 호출되는 함수 설정
      ),
    );
  }
}
