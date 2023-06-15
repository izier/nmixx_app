import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nmixx_app/gallery_screen.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'discography_screen.dart';
import 'gallery_screen.dart';

var currentPage = DrawerItems.home;
var title;
var iconColor;
class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size.width;

    var homeSize = 20.0;
    var profileSize = 20.0;
    var discoSize = 20.0;
    var gallerySize = 20.0;
    var videoSize = 20.0;

    var pageBody;
    if (currentPage == DrawerItems.home) {
      pageBody = HomeScreen();
      title = Image.asset('images/logo_white.png', width: 75,);
      iconColor = Colors.white;
      homeSize = 32.0;
    } else if (currentPage == DrawerItems.profile) {
      pageBody = ProfileScreen();
      title = Text('Profile', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w700),);
      iconColor = Colors.black;
      profileSize = 32.0;
    } else if (currentPage == DrawerItems.discography) {
      pageBody = DiscographyScreen();
      title = Text('Discography', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w700),);
      iconColor = Colors.black;
      discoSize = 32.0;
    } else if (currentPage == DrawerItems.gallery) {
      pageBody = GalleryScreen();
      title = Text('Gallery', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w700),);
      iconColor = Colors.black;
      gallerySize = 32.0;
    }

    Widget MyDrawer = Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset('images/logo_black.png'),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: homeSize,
                  fontWeight: FontWeight.w700
              ),
            ),
            onTap: () {
              setState(() {
                currentPage = DrawerItems.home;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            title: Text(
              'Profile',
              style:TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: profileSize,
                  fontWeight: FontWeight.w700
              ),
            ),
            onTap: (){
              setState(() {
                currentPage = DrawerItems.profile;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            title: Text(
              'Discography',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: discoSize,
                  fontWeight: FontWeight.w700
              ),
            ),
            onTap: (){
              setState(() {
                currentPage = DrawerItems.discography;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            title: Text(
              'Gallery',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: gallerySize,
                  fontWeight: FontWeight.w700
              ),
            ),
            onTap: (){
              setState(() {
                currentPage = DrawerItems.gallery;
                Navigator.pop(context);
              });
            },
          ),
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: title,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: iconColor),
        ),
        extendBodyBehindAppBar: true,
        body: pageBody,
        drawer: MyDrawer
    );
  }
}

enum DrawerItems {
  home, profile, discography, gallery, video
}