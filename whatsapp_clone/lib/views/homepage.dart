import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home/home_widgets.dart';
import 'package:whatsapp_clone/views/widgets.common/widgtes.dart';
import '../constantes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Chats',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.group_add,
                    size: 32,
                    color: greenColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            const Divider(
              thickness: 0.2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    addStoryWidget(60, Icons.add, 'New Status'),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                        height: 100,
                        child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                                15,
                                (index) => StoryWidget(
                                    60,
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/1024px-Gnome-stock_person.svg.png',
                                    'Athur Canon Doyler',
                                    false)))),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 0.7,
            ),
            Expanded(
              child: ListView(
                children: [
                  // 'https://www.personality-database.com/profile_images/150452.png'
                  messageListTile(
                      context: context,
                      imageUrl:
                          'https://static.wikia.nocookie.net/thebate/images/f/ff/Sylvie_%28White_Form%29.png/revision/latest?cb=20200913141714',
                      title: 'Sylvie',
                      subtitle: 'Vou dormir até ano que vem.',
                      timeFrame: '6:30',
                      isOnline: true),
                  messageListTile(
                      context: context,
                      imageUrl:
                          'https://www.personality-database.com/profile_images/150452.png',
                      title: 'Tessia Eralith',
                      subtitle: 'Cadê você seu idiota?',
                      timeFrame: '01:22',
                      isOnline: true),
                  messageListTile(
                      context: context,
                      imageUrl:
                          'https://static.wikia.nocookie.net/thebate/images/5/5a/Elderwood_Guardian.png/revision/latest/top-crop/width/360/height/360?cb=20200801093755',
                      title: 'Eldenwood',
                      subtitle: 'Vem me solar sem o poder do dragão seu merda!',
                      timeFrame: '12:32',
                      isOnline: false),
                  messageListTile(
                      context: context,
                      imageUrl:
                          'https://static.wikia.nocookie.net/thebate/images/f/f5/Kaspian.png/revision/latest?cb=20200208140152',
                      title: 'Caspian',
                      subtitle: 'Bora no x1 de novo!',
                      timeFrame: '9:21',
                      isOnline: false),
                  messageListTile(
                      context: context,
                      imageUrl:
                          'https://static.wikia.nocookie.net/thebate/images/e/e6/Elijah_Knight_%28Current%29.png/revision/latest/scale-to-width-down/160?cb=20200604093408',
                      title: 'Elija Knight',
                      subtitle: 'Divide metade disso ai comigo.',
                      timeFrame: '16:32',
                      isOnline: true),
                  messageListTile(
                      context: context,
                      imageUrl:
                          'https://i.pinimg.com/736x/0e/96/a0/0e96a06774560f7a759b3babaf140999.jpg',
                      title: 'Lucas Wykes',
                      subtitle: 'Morto não fala!',
                      timeFrame: '16:32',
                      isOnline: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
