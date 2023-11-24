import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manage/providers/counterProvider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (context, values, child) {
      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text("Second Screen",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Counter",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              Text(
                "${values.value}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white.withOpacity(0.7),
          onPressed: () {
            values.decrement();
          },
          child: const Icon(Icons.remove),
        ),
      );
    });
  }
}
