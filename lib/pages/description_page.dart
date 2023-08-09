import 'package:flutter/material.dart';
import 'package:tesapp/core/constants.dart';
import '../class/item_class.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    Key? key,
    required this.box,
  }) : super(key: key);

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(box.imagePath),
              FittedBox(
                child: Text(
                  box.title,
                  style: const TextStyle(
                    fontSize: 200,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
