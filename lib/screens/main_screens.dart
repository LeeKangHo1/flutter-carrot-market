import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHolder extends StatefulWidget {
  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  // 1. 상태
  int selectedIndex = 0;

  // 2. 행위, onTap보다 여기에 적는 것을 추천
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex, // 0번이 최초 화면, 화면 전환 시 숫자 변경
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex, // 위의 index: 랑 똑같이 설정해야 함
          onTap: (value) {
            // value가 현재 index?
            onClickBottomNavigation(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_on_square), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.placemark), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: ""),
          ]),
    );
  }
}
