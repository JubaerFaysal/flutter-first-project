import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home_Page()
    );
  }
   
}
class Home_Page extends StatelessWidget{
  const Home_Page({super.key});

  mActioninBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
title: Text("Home Page"),
titleSpacing: 10,
centerTitle: false,
toolbarHeight: 60,
toolbarOpacity: 1,
//elevation: 100,
backgroundColor: Color.fromARGB(244, 142, 104, 245),
actions: [
  IconButton(onPressed: (){mActioninBar("comment",context);}, icon: Icon(Icons.comment_bank)),
  IconButton(onPressed: (){mActioninBar("Search",context); }, icon: Icon(Icons.search)),
  IconButton(onPressed: (){mActioninBar("Setting",context);}, icon: Icon(Icons.settings)),
],
   ),
  floatingActionButton: FloatingActionButton(
elevation: 100,
child: Icon(Icons.face),
backgroundColor: Color.fromARGB(255, 171, 69, 238),
onPressed: (){
mActioninBar("Floating Action Button", context);
},
  ),
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: 0,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
      BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call",),
      BottomNavigationBarItem(icon: Icon(Icons.mail),label: "Mail",),
    ],
    onTap: (int index){
      if(index==0){
       mActioninBar("Home Menu", context) ;
      }
      if (index == 1) {
            mActioninBar("Call Centre", context);
          }
      if (index == 2) {
            mActioninBar("Mail Me", context);
          }
    },
    ),
   drawer: Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        padding: EdgeInsets.all(0),
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color.fromARGB(255, 97, 21, 237)),
          accountName: Text("Jubaer Ahmed"),
          accountEmail: Text("jubaerfaysal@gmail.com"),
          //currentAccountPicture: Image.network("https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png"),
        )
        ),
      ListTile(
        leading: Icon(Icons.home_outlined),
        title: Text("Home"),
        onTap: (){
          mActioninBar("Home Drawer", context);
          }),
      ListTile(
        leading: Icon(Icons.connect_without_contact),
        title: Text("contact")
        ),
      ListTile(
        leading: Icon(Icons.email_sharp),
        title: Text("Email")
        ),
      ListTile(
        leading: Icon(Icons.phone_enabled_outlined),
        title: Text("Phone")
        ),
      ListTile(
        leading: Icon(Icons.person_3_outlined),
        title: Text("Profile")
        ),
    ],
  )
   ),
    );
  }

}

