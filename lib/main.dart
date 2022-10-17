import 'package:flutter/material.dart';
import 'person.dart';
import 'person_card.dart';
void main() {
  runApp(const MyApp());
}
List<Person> persons = [
  Person('Ahmad','19/1234','Hebron','0569878787'),
  Person('Ali ','20/1234','Nablus','0599101235'),
  Person('Muna','21/1234','Bethlehem','022236984'),
];
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Persons\' Cards'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index) {
            return PersonCard(persons[index]);
          },
        ),
        )
      );
  }
}



