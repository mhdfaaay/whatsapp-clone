import 'package:flutter/material.dart';

class Callspage extends StatelessWidget {
  const Callspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          onTap:() {
          _selectDate(context);
          print('Tapped ');
        } ,
         // leading: CircleAvatar(backgroundColor: Colors.green),
          title: Text('Name', style: TextStyle(fontSize: 17)),
           subtitle: Text('Missed Call',style: TextStyle(fontStyle: FontStyle.italic),),
          trailing: const Text('07:14'),
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      print('Selected date: $picked');
    }
  }
}