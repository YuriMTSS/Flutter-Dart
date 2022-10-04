// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_2/Screens/individualPage.dart';
import 'package:whatsapp_clone_2/models/chatModel.dart';

class CustomCard extends StatelessWidget {
  final ChatModel chatModel;
  const CustomCard({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IndividualPage(
                      chatModel: chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              //child: SvgPicture.asset(
              //chatModel.isGroup ? 'assets/groups.svg' : 'assets/person.svg',
              //color: Colors.white,
              //height: 38,
              //width: 38,
              //),
            ),
            title: Text(
              chatModel.nome,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
