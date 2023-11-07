import 'package:flutter/material.dart';
import 'package:crud_firebase/services/firebase_service.dart';
class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material app Bar'),
      ),
      body: FutureBuilder(
        future: getProducts(),
        builder: ((context, snapshot) {
          if (snapshot.hasData){
            return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Text(snapshot.data?[index]['name'] ?? 'Pasos no disponibles');

              // return Text(snapshot.data?[index]['name'] ?? 'Nombre no disponible'); esta linea puede ser util
            },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

        })),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
           await Navigator.pushNamed(context, '/add');
           setState(() {
             
           });
          },
          child: const Icon(Icons.add),
          ),
      );
  }
}