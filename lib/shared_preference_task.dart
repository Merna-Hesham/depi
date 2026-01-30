import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceTask extends StatefulWidget {
  const SharedPreferenceTask({super.key});

  @override
  State<SharedPreferenceTask> createState() => _SharedPreferenceTaskState();
}

class _SharedPreferenceTaskState extends State<SharedPreferenceTask> {
  final TextEditingController inputText = TextEditingController();
  String text = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: inputText,
                decoration: InputDecoration(
                  labelText: 'Enter Text',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: saveData,
                child: Text('Save'),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: getData,
                child: Text('Retrieve'),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: resetData,
                child: Text('Reset'),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('text', inputText.text);
  }

  Future<void> getData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      text = prefs.getString('text') ?? 'None';
    });
  }

  Future<void> resetData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('text');
    setState(() {
      text = 'None';
      inputText.clear();
    });
  }
}
