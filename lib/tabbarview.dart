import 'package:flutter/material.dart';

import 'fastscreen.dart';
import 'moblieimage.dart';


class TabBarview_Screen extends StatefulWidget {
  const TabBarview_Screen({Key? key}) : super(key: key);

  @override
  State<TabBarview_Screen> createState() => _TabBarview_ScreenState();
}

class _TabBarview_ScreenState extends State<TabBarview_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "MoblieApp",
                  style: TextStyle(fontSize: 30),
                ),
                centerTitle: false,
                actions: [
                  IconButton(onPressed: (){
                    Navigator.pushNamed(context,'cart');
                  }, icon: Icon(Icons.local_grocery_store_outlined,size: 30,)),
                  SizedBox(
                    width: 5,
                  ),
                ],
                bottom: TabBar(
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      text: "Mobliers",
                    ),
                    Tab(
                      text: "Moblie Image",
                    ),
                    Tab(
                      text: "Mobliers Detils",
                    ),
                  ],
                ),
              ),
              drawer: Drawer(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 125,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: InkWell(onTap: () {
                                      Navigator.pop(context);
                                    },
                                        child: Icon(Icons.arrow_back_ios,
                                          color: Colors.white, size: 20,)),
                                  ),
                                  Text("Hi, Virani Raj Ba......",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Text("1234567891   |   MoblieApp Shop",
                                    style: TextStyle(color: Colors.white54),),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom: 8),
                                height: 1,
                                width: double.infinity,
                                color: Colors.white54,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.settings, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text("Profile & Settings",
                                    style: TextStyle(color: Colors.white),),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                InkWell(onTap: () {
                                  Navigator.pushNamed(context, 'date');
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text("Date",
                                            style: TextStyle(fontSize: 20)),
                                        SizedBox(width: 20,),
                                        Icon(Icons.calendar_today_outlined,
                                            size: 20),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(onTap: () {
                                  Navigator.pushNamed(context, 'time');
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text("Time",
                                          style: TextStyle(fontSize: 20),),
                                        SizedBox(width: 20,),
                                        Icon(Icons.access_time, size: 20),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(onTap: () {
                                  Navigator.pushNamed(context, 'step');
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Text("Detils",
                                          style: TextStyle(fontSize: 20),),
                                        SizedBox(width: 20,),
                                        Icon(Icons.create_outlined, size: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  homescreen(),
                  moblieimage_Screen(),
                  homescreen(),
                ],
              ),
            )
        )
    );
  }
}