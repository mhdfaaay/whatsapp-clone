import 'package:flutter/material.dart';


class Chatspage extends StatelessWidget {
  const Chatspage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
    separatorBuilder: (context, index) {
      return const Divider();
    },
    itemCount: 10,
    itemBuilder: (context, index) {
    return const ListTile(
      leading: CircleAvatar(backgroundColor: Colors.green,
      ),
      title: Text('Name',style: TextStyle(fontSize: 17),),
      subtitle: Text('Waiting for the text',style: TextStyle(fontStyle: FontStyle.italic),),
      trailing: Text('07:14'),
    );
          },);
  }
} 