import 'package:flutter/material.dart';
import 'package:whatsappclone/tabs/chat_page_tab.dart';
import 'package:whatsappclone/tabs/status_page_tab.dart';

import '../tabs/call_page_tab.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController!.addListener(_handleTabChange);
    super.initState();
  }

  void _handleTabChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const List<Widget> tabs = [
      Tab(icon: Icon(Icons.camera_alt_rounded)),
      Tab(text: 'Chats'),
      Tab(text: 'Status'),
      Tab(text: 'Calls'),
    ];

    Widget? changeFloatingButton() {
      if (_tabController!.index == 1) {
        return FloatingActionButton(
          child: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
          onPressed: () {},
        );
      } else if (_tabController!.index == 2) {
        return FloatingActionButton(
          child: const Icon(
            Icons.camera_enhance,
            color: Colors.white,
          ),
          onPressed: () {},
        );
      } else if (_tabController!.index == 3) {
        return FloatingActionButton(
          child: const Icon(
            Icons.phone,
            color: Colors.white,
          ),
          onPressed: () {},
        );
      }

      return null;
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          floatingActionButton: changeFloatingButton(),
          appBar: AppBar(
            toolbarHeight: 90,
            actions: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white54,
                ),
              ),
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white54,
                ),
              ),
            ],
            leading: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: Text(
                'WhatsApp',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white54,
                ),
              ),
            ),
            leadingWidth: 300,
            bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.greenAccent,
              unselectedLabelColor: Colors.white54,
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              SizedBox(),
              ChatPageView(),
              StatusPageView(),
              CallPageView(),
            ],
          )),
    );
  }
}
