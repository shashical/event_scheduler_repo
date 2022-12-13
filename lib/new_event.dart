import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({super.key});

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 88, 241),
      appBar: AppBar(
        title: const Text("New Event"),
        backgroundColor: const Color.fromARGB(255, 78, 8, 148),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 360,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 78, 8, 148),
                borderRadius: BorderRadius.circular(45),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.event, color: Colors.white),
                    ),
                    label: Text(
                      "Event",
                      style: TextStyle(color: Colors.white),
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  controller: _textEditingController,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Builder(builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 360,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(166, 211, 199, 211),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: TextButton(
                  onPressed: () {
                    String new_event = _textEditingController.text;
                    Navigator.of(context).pop(new_event);
                  },
                  child: const Text(
                    "ADD",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ]),
    );
  }
}
