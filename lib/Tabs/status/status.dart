import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            showAboutDialog(context: context);
            print('Tapped$index');
          },
          leading: CircleAvatar(backgroundColor: Colors.white),
          title: Text('Status', style: TextStyle(fontSize: 17)),
          // subtitle: Text(
          //   'Waiting for the text',
          //   style: TextStyle(fontStyle: FontStyle.italic),
          // ),
          trailing: const Text('07:14'),
        );
      },
    );
  }
}
showAlertDialog(BuildContext context) {

 Widget okButton = TextButton(
  child: Text("OK"),
  onPressed: () { },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

 showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}