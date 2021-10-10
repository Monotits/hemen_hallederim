import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'hizmet_ekle.dart';
import 'homepage.dart';
import 'login.dart';
import 'menu.dart';
import 'video.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int tabindex = 0;

  double iconSize = 30;

  late List<Widget> tumSayfalar;
  late Home homePage;
  late Video videoPage;
  late Login loginPage;
  late HizmetEkle hizmetEklePage;
  late Menu menuPage;

  String homeAktif = 'assets/bottombar/btn-anasayfa-active.svg';
  String home = 'assets/bottombar/btn-anasayfa.svg';
  String video = 'assets/bottombar/btn-nasilcalisir.svg';
  String videoAktif = 'assets/bottombar/btn-nasilcalisir-active.svg';
  String login = 'assets/bottombar/btn-girisyap.svg';
  String loginAktif = 'assets/bottombar/btn-girisyap-active.svg';
  String hizmetVer = 'assets/bottombar/btn-hizmetver.svg';
  String hizmetVerAktif = 'assets/bottombar/btn-hizmetver-active.svg';
  String menu = 'assets/bottombar/btn-menu.svg';
  String menuAktif = 'assets/bottombar/btn-menu-active.svg';

  @override
  void initState() {
    super.initState();
    const homePage = Home();
    const videoPage = Video();
    const loginPage = Login();
    const hizmetEklePage = HizmetEkle();
    const menuPage = Menu();
    tumSayfalar = [homePage, videoPage, loginPage, hizmetEklePage, menuPage];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: bottomNav(),
      backgroundColor: Theme.of(context).primaryColor,
      body: tumSayfalar[tabindex],
    ));
  }

  Theme bottomNav() {
    return Theme(
      data: ThemeData(
        canvasColor: const Color(0xfffa7124),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        //unselectedItemColor: Colors.grey,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          //backgroundColor: Color(0xfffa7124),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xfffa7124),
            icon: SvgPicture.asset(
              home,
              height: iconSize,
              width: iconSize,
            ),
            activeIcon: SvgPicture.asset(
              homeAktif,
              height: iconSize,
              width: iconSize,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xfffa7124),
            icon: SvgPicture.asset(
              video,
              height: iconSize,
              width: iconSize,
            ),
            activeIcon: SvgPicture.asset(
              videoAktif,
              height: iconSize,
              width: iconSize,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xfffa7124),
            icon: SvgPicture.asset(
              login,
              height: iconSize,
              width: iconSize,
            ),
            activeIcon: SvgPicture.asset(
              loginAktif,
              height: iconSize,
              width: iconSize,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xfffa7124),
            icon: SvgPicture.asset(
              hizmetVer,
              height: iconSize,
              width: iconSize,
            ),
            activeIcon: SvgPicture.asset(
              hizmetVerAktif,
              height: iconSize,
              width: iconSize,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xfffa7124),
            icon: SvgPicture.asset(
              menu,
              height: iconSize,
              width: iconSize,
            ),
            activeIcon: SvgPicture.asset(
              menuAktif,
              height: iconSize,
              width: iconSize,
            ),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: tabindex,
        onTap: (index) {
          setState(() {
            tabindex = index;
          });
        },
      ),
    );
  }
}
