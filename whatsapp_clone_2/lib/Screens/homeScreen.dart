// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_2/pages/chatPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        shadowColor: const Color(0xFF128C7E),
        title: const Text('WhatsApp Clone'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(onSelected: (value) {
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: 'New Group',
                child: Text('New Group'),
              ),
              const PopupMenuItem(
                value: 'New broadcast',
                child: Text('New broadcast'),
              ),
              const PopupMenuItem(
                value: 'WhatsApp Web',
                child: Text('WhatsApp Web'),
              ),
              const PopupMenuItem(
                value: 'Starred Message',
                child: Text('Starred Message'),
              ),
              const PopupMenuItem(
                value: 'Settings',
                child: Text('Settings'),
              ),
            ];
          }),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [Text('Camera'), ChatPage(), Text('Status'), Text('Calls')],
      ),
    );
  }
}
