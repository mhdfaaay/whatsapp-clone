import 'package:flutter/material.dart';
import 'package:whatsappchat/Tabs/calls/calls.dart';
import 'package:whatsappchat/Tabs/chats/chats.dart';
import 'package:whatsappchat/Tabs/status/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialog box',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
         backgroundColor: Colors.green,
         foregroundColor: Colors.black,
         shape: StadiumBorder(),
        )
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
          backgroundColor: const Color.fromARGB(255, 16, 102, 50),
        actions: [const Padding(
          padding: EdgeInsets.only(right: 40),
          child: Icon(Icons.search, 
          color: Colors.white,
          size: 25,),
        ),
        const Icon(Icons.more_vert,color: Colors.white,), 
      ],
      title: const Text("WhatsApp",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 20
            ),
            labelColor: Colors.white,
            tabs:  [
              Tab(text: 'Chats',),
              Tab(text: 'Status',),
              Tab(text: 'Calls',)

            ]) ,
        ),
        
        body:TabBarView(
          children: [
          Chatspage(),
          StatusPage(),
          Callspage()
        ]),
       floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.message, color: Colors.white,),),
      ));
  }
}

