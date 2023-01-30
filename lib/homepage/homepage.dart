import 'package:flutter/material.dart';
import 'package:uiclone/widgets/CallsWidgets.dart';
import 'package:uiclone/widgets/ChatWidget.dart';
import 'package:uiclone/widgets/StatusWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Whatsapp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 12, left: 15, top: 30),
                child: Icon(Icons.search_sharp, size: 28),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5) {
                    Navigator.pushNamed(context, "SettingsPage");
                  }
                },
                padding: EdgeInsets.symmetric(vertical: 30),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      'New Group',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      'New Broadcast',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      'Linked Devices',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text(
                      'Starred Messages',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      'Settings',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xff075e55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 24,
                    child: Tab(
                      icon: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("CHATS"),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "10",
                              style: TextStyle(
                                  color: Color(0xff075e55), fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("STATUS"),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  ChatWidget(),
                  StatusWidget(),
                  CallsWidgets(),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          backgroundColor: Color(0xff075e55),
          child: Icon(
            Icons.messenger,
            size: 30,
          ),
        ),
      ),
    );
  }
}
