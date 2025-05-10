import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:intl/intl.dart';

class ChatBubbledd extends StatelessWidget {
  const ChatBubbledd({super.key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.sender == "user"
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(13.0),
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color:
              message.sender == "user" ? colorred.withOpacity(0.2) : colorwhite,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              overflow: TextOverflow.clip,
              message.message??'',
              style: const TextStyle(
                  color: colorblack, fontSize: 16, fontWeight: FontWeight.w400),
            ),
            sboxW,
            Text(
              DateFormat('jmv').format(message.timestamp!),
              style: TextStyle(
                  color: colorblack.withOpacity(0.5),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

// enum MessageStatus {
//   seen,
//   unseen,
// }

// class Messages {
//   final String message;
//   final String sender;
//   final DateTime timestamp;
//   final MessageStatus status;

//   Messages({
//     required this.message,
//     required this.sender,
//     required this.timestamp,
//     required this.status,
//   });

//   factory Messages.fromJson(Map<String, dynamic> json) {
//     return Messages(
//       message: json['message'] ?? '',
//       sender: json['sender'] ?? '',
//       timestamp: DateTime.parse(json['timestamp'] ?? ''),
//       status: _parseMessageStatus(json['status']),
//     );
//   }

//   static MessageStatus _parseMessageStatus(String status) {
//     switch (status) {
//       case 'seen':
//         return MessageStatus.seen;
//       case 'unseen':
//         return MessageStatus.unseen;
//       default:
//         return MessageStatus.unseen;
//     }
//   }
// }
