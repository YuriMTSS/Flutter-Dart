// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_2/models/chatModel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                //child: SvgPicture.asset(
                //widget.chatModel.isGroup ? 'assets/groups.svg' : 'assets/person.svg',
                //color: Colors.white,
                //height: 38,
                //width: 38,
                //),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.nome,
                  style: const TextStyle(
                      fontSize: 18.5, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Last seen today at a 12:05',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'VIew contact',
                  child: Text('View contact'),
                ),
                const PopupMenuItem(
                  value: 'Media, links and docs',
                  child: Text('Media, links and docs'),
                ),
                const PopupMenuItem(
                  value: 'WhatsApp web',
                  child: Text('WhatsApp web'),
                ),
                const PopupMenuItem(
                  value: 'Search',
                  child: Text('Search'),
                ),
                const PopupMenuItem(
                  value: 'Mute notification',
                  child: Text('Mute notification'),
                ),
                const PopupMenuItem(
                  value: 'Wallpaper',
                  child: Text('Wallpaper'),
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}
