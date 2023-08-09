import 'package:flutter/material.dart';
import 'package:tesapp/core/constants.dart';
import '../class/item_class.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    Key? key,
    required this.box,
  }) : super(key: key);

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('snackbar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble20,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 25;
                      });
                    },
                    child: const Text(
                      'small text',
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 35;
                      });
                    },
                    child: const Text(
                      'medium text',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    child: const Text(
                      'large text',
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 200;
                      });
                    },
                    child: const Text(
                      'huge text',
                    ),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 19,
                  wordSpacing: 3,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kDouble10,
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 19,
                  wordSpacing: 3,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
