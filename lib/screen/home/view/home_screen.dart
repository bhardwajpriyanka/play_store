import 'package:flutter/material.dart';
import 'package:play_store/screen/foryou/view/foryou_screen.dart';
import 'package:play_store/screen/home/provider/home_provider.dart';
import 'package:play_store/screen/topchart/view/topchat_screen.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  homeprovider? hf,ht;
  @override
  Widget build(BuildContext context) {

    hf = Provider.of<homeprovider>(context,listen: false);
    ht = Provider.of<homeprovider>(context,listen: true);
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(0, 2))
                  ],
                ),
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Search for apps & games",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade500)),
                      Spacer(),
                      Icon(Icons.settings_voice_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,width: double.infinity,
                child: TabBar(
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,

                  tabs: [
                    Tab(
                      child: Text("For You",style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text("Top charts",style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text("Categories",style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text("Editor's chart",style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,width: double.infinity,
                child: TabBarView(
                  children: [
                    ht!.click?topchat_screen():foryou_screen(),
                    topchat_screen(),
                    foryou_screen(),

                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            currentIndex: ht!.i,
            showUnselectedLabels: true,
            onTap: (value) {
              ht!.onclick();
              ht!.position(value);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.videogame_asset_rounded),label: "Games"),
              BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Apps"),
              BottomNavigationBarItem(icon: Icon(Icons.local_movies_outlined),label: "Movies & TV"),
              BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "Books"),
            ],
          ),
        ),
      ),
    );
  }
}
