import 'package:flutter/material.dart';

class Botton_navigator_bar extends StatefulWidget {
  const Botton_navigator_bar({super.key});

  @override
  State<Botton_navigator_bar> createState() => _Botton_navigator_barState();
}

class _Botton_navigator_barState extends State<Botton_navigator_bar> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =TabController(length: 3, vsync: this);

    _tabController.addListener(
          () => setState(() {
        _selectedIndex = _selectedIndex;
      }),
    );

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("바텀 네비게이션 바"),
      ),
      body: _selectedIndex == 0 ?
      tabContainer(context, Colors.indigo, "Friends Tap")
          : _selectedIndex == 1 ? tabContainer(context, Colors.yellow, "Chats Tab")
          : tabContainer(context, Colors.blue, "Settings Tap"),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "Friends",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Settings",
              ),
            ]
        ),
      ),
    );
  }
  Widget tabContainer(BuildContext con, Color tabcolor, String tabText){
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabcolor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}