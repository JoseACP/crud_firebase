import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//Recibir datos
Future<List> getProducts() async{
  List products = [];
  CollectionReference collectionReferenceProducts = db.collection('Products');

  QuerySnapshot queryProducts = await collectionReferenceProducts.get();

  queryProducts.docs.forEach((documento) {
    products.add(documento.data());
  });


  return products; 
}
//Guardar datos

Future<void> addProducts(String name) async{
  await db.collection("Products").add({"name": name});
}