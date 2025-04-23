import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/chat_section/data/model/remote/get_message_model.dart';
import 'package:flutter_consumer_app/features/chat_section/data/model/remote/get_user_messages_model.dart';
import 'package:flutter_consumer_app/features/chat_section/data/model/remote/sent_message_model.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/request/sent_message_request.dart';
import 'package:http/http.dart' as http;

abstract class ChatRemoteDataSource {
  Future<SentMessageModel> sentMessage(
      {required SentMessageRequest sentMessageRequest,
      required String fcmToken});
  Future<GetUserMessageModel> getUserMessages({required String userUuid});
  Future<GetMessageModel> getMessage({required String userUuid});
}

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final http.Client httpClient;

  ChatRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<GetMessageModel> getMessage({required String userUuid}) async {
    // TODO: implement sentMessage
    throw UnimplementedError();
  }

  @override
  Future<GetUserMessageModel> getUserMessages(
      {required String userUuid}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/chats/getUserMessages/v2/$userUuid');
    final response = await httpClient.get(url, headers: headers);

    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      if (decodedBody["code"] == "FAILED") {
        throw ServerFailure(errorMessage: decodedBody["message"]);
      }

      return GetUserMessageModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<SentMessageModel> sentMessage(
      {required SentMessageRequest sentMessageRequest,
      required String fcmToken}) async {
    var headers = {
      "calling_entity": "WEB_UI",
      "Content-Type": "application/json",
      "token": fcmToken
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/chats/sendMassage/v2');
    final response = await httpClient.post(url,
        headers: headers, body: sentMessageRequestToJson(sentMessageRequest));
    log(sentMessageRequestToJson(sentMessageRequest));
    log('${response.statusCode.toString()}-----------------------------------------------');
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return SentMessageModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
