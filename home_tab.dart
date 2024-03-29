import 'package:flutter/material.dart';
import 'map_tab.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'), // 홈 타이틀
        leading: IconButton( // 좌측 상단 아이콘 버튼
          icon: Icon(Icons.home), // 홈 아이콘
          iconSize: 20, // 홈 아이콘 크기 설정
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapTab()),
            );
            // 홈 버튼 눌렀을 때의 동작
            print('Home button pressed');
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapTab()),
            );
          },
          child: Text('원룸, 투룸'),
        ),
      ),
    );
  }
}
