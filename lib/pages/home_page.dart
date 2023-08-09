import 'package:flutter/material.dart';
import 'package:tesapp/class/item_class.dart';
import 'package:tesapp/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                  title: 'Rocket',
                  imagePath: 'images/rocket.png',
                  description: 'this is rocket'),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Travel',
                        imagePath: 'images/travel.png',
                        description: 'this is travel'),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Space',
                        imagePath: 'images/space.png',
                        description: 'this is space'),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                  title: 'Yeah',
                  imagePath: 'images/yeah.png',
                  description: 'this is yeah'),
            ),
          ],
        ),
      ),
    );
  }
}
