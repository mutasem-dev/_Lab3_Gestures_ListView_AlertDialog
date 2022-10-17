import 'package:flutter/material.dart';
import 'person.dart';
class PersonCard extends StatelessWidget {
  final Person person;
  const PersonCard(this.person, {Key? key}) : super(key: key);
  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('${person.name} Details',
          style: const TextStyle(fontSize: 30,color: Colors.blue,backgroundColor: Colors.black12),),
          content: Text(person.toString(),
          style: const TextStyle(fontSize: 25),),
          actions: [
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              label: const Text('Close'),
            ),
          ],
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                       const Text('Name: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                       Text(person.name,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text('Id: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(person.id,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                ],
              ),
              Image.asset('assets/images/person.png',width: 80,height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}