import 'package:flutter/material.dart';
import 'package:tesapp/core/constants.dart';
import 'package:tesapp/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 70,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Bittu'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('abd@xyz.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('example.com'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if(!isDark){
              return const Icon(Icons.dark_mode_rounded);
            }else{
              return const Icon(Icons.light_mode_rounded);
            }
          },
        ),
      ),
    );
  }
}
