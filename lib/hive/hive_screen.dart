import 'package:flutter/material.dart';
import 'hive_helper.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  String savedName = '';
  String savedAge = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Name'
                ),
              ),

              SizedBox(
                height: 20,
              ),

              TextField(
                controller: ageController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your age'
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () async{
                  await HiveHelper.saveData('name', nameController.text);
                  await HiveHelper.saveData('age', ageController.text);
                  setState(() {

                  });
                },
                child: Text(
                  'Save',
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () async{
                  final name = await HiveHelper.getData('name', defaultValue: '');
                  final age = await HiveHelper.getData('age', defaultValue: '');

                  setState(() {
                    savedName = name;
                    savedAge = age;
                  });
                },
                child: Text(
                  'Retrieve',
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () async{
                  await HiveHelper.clearAll();

                  setState(() {
                    savedName = '';
                    savedAge = '';
                  });
                },
                child: Text(
                  'Clear',
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'Name: $savedName',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'Age: $savedAge',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
