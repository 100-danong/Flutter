import 'package:flutter/material.dart';

import 'sub/firstPage.dart' as first;
import 'sub/secondPage.dart' as second;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      if (!controller.indexIsChanging) {
        print("이전 index: ${controller.previousIndex}");
        print("현재 index: ${controller.index}");
        print("전체 탭 길이: ${controller.length}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Example'),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          first.FirstApp(),    // ✅ 함수처럼 호출하지 않으면 에러 납니다
          second.SecondApp(),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        tabs: const <Tab>[
          Tab(icon: Icon(Icons.looks_one, color: Colors.blue)),
          Tab(icon: Icon(Icons.looks_two, color: Colors.blue)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
