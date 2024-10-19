import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[200],
          title: const Center(child: Text('T A B  B A R', style: TextStyle(color: Colors.white))),
        ),
        body: Container(
          color: Colors.deepPurple[200],
          child: Column(
            children: [
              TabBar(
                  labelColor: Colors.deepPurple[500], // Color for the selected tab
                  unselectedLabelColor: Colors.deepPurple[300], // Color for unselected tabs
                  indicatorColor: Colors.deepPurple[500], // Indicator color
                  tabs: const [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.settings)),
                    Tab(icon: Icon(Icons.person)),
                  ]
              ),

              Expanded(
                child: TabBarView(
                    children: [
                      Container(color: Colors.deepPurple[100], child: const Center(child: Text('1ST TAB', style: TextStyle(color: Colors.white)))),
                      Container(color: Colors.deepPurple[300], child: const Center(child: Text('2ND TAB', style: TextStyle(color: Colors.white)))),
                      Container(color: Colors.deepPurple[500], child: const Center(child: Text('3RD TAB', style: TextStyle(color: Colors.white)))),
                    ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}