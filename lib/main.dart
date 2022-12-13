import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list=[
    
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 172, 88, 241),
        appBar: AppBar(
          title: const Text("Event Scheduler"),
          backgroundColor: const Color.fromARGB(255, 78, 8, 148),
        ),
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => _list[index])
          ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 85, 12, 158),
              onPressed: () async {
                String newText= await
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewEventScreen(),));
                setState(() {
                  _list.add(Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        //height: 80,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(newText,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ));
                });
              },
              child: const Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
//4 Dec Advanced Git & Github Workshop
//8 Dec First steps to flutter Week 2