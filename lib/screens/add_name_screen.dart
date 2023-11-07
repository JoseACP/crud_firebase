import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class AddNameScreen extends StatefulWidget {
  const AddNameScreen({Key? key}) : super(key: key);

  @override
  State<AddNameScreen> createState() => _AddNameScreenState();
}

class _AddNameScreenState extends State<AddNameScreen> {
  TextEditingController nameController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children:  [
             TextField(
              controller: nameController,
              decoration:  const InputDecoration(
                hintText: 'Enter name',
              ),
            ),
            ElevatedButton(
              onPressed: () async{
              await addProducts(nameController.text).then((_){
                Navigator.pop(context);
              });
            }, child: const Text('Guayando'))
          ],
        ),
      ),

    );
  }
}