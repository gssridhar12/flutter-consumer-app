import 'package:flutter/material.dart';

class MessageTileWidget extends StatelessWidget {
  const MessageTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(),
      title: Row(
        children: [
          Icon(Icons.message_outlined, size: 16),
          Text('Neha Kumar sent you a message',
              style: TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
      subtitle: Text('Hi Gargi, yes I have gone through your reqiremen.... '),
    );
  }
}
