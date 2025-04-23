// To parse this JSON data, do
//
//     final addPartnerLikeModel = addPartnerLikeModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_like_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'add_partner_like_model.freezed.dart';
part 'add_partner_like_model.g.dart';

@freezed
class AddPartnerLikeModel extends AddPartnerLikeEntity
    with _$AddPartnerLikeModel {
  const factory AddPartnerLikeModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _AddPartnerLikeModel;

  factory AddPartnerLikeModel.fromJson(Map<String, dynamic> json) =>
      _$AddPartnerLikeModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "user_uuid") String? userUuid,
    @JsonKey(name: "profile_uuid") String? profileUuid,
    @JsonKey(name: "is_liked") bool? isLiked,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
