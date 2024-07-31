import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  int _selectedIndex = 0;


  @override
  void intState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(
        () => setState(() {
          _selectedIndex = _tabController.index;
        }),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("이수강 바보"),
      ),
      body: _selectedIndex == 0 ?
        tabContainer(context, Colors.indigo, "Freind Tab")
    : _selectedIndex == 1 ?
    tabContainer(context, Colors.yellow, "chats Tab")
    : tabContainer(context, Colors.red, "settings Tab"),

    bottomNavigationBar: SizedBox(
    height: 90,
    child: TabBar(
    controller: _tabController,
    labelColor: Colors.black,
    tabs: [
      Tab(
    icon: Icon(Icons.person),
    text: "Freinds",
    ),

    Tab(
    icon: Icon(Icons.chat),
    text: "chat",
    ),

    Tab(
    icon: Icon(Icons.settings),
    text: "setting",
    )
    ],
    )
    ),
    );
  }


  Widget tabContainer(BuildContext con, Color tabColor, String tabText){
    return Container(
       width: MediaQuery.of(con).size.width,
        height: MediaQuery.of(con).size.height,
        color: tabColor,
        child: Center(
          child: Text(
            tabText,
            style: const TextStyle(
              color: Colors.white
       )
      ),
     ),
    );
  }
}


