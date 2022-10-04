// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_2/CustomUI/customCard.dart';
import 'package:whatsapp_clone_2/models/chatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        nome: 'Yuri',
        icon: 'person.svg',
        isGroup: false,
        time: '4:00',
        currentMessage: 'Olá!'),
    ChatModel(
        nome: 'Mula',
        icon: 'person.svg',
        isGroup: false,
        time: '5:00',
        currentMessage: 'Quié!'),
    ChatModel(
        nome: 'Avatar',
        icon: 'groups.svg',
        isGroup: false,
        time: '1:00',
        currentMessage: '4 elementos!'),
    ChatModel(
        nome: 'Saga',
        icon: 'person.svg',
        isGroup: false,
        time: '00:00',
        currentMessage: 'Morra Seiya!'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
