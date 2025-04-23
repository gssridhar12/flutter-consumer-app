// To parse this JSON data, do
//
//     final addPackageReviewModel = addPackageReviewModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_review_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_package_review_model.freezed.dart';
part 'add_package_review_model.g.dart';

AddPackageReviewModel addPackageReviewModelFromJson(String str) =>
    AddPackageReviewModel.fromJson(json.decode(str));

String addPackageReviewModelToJson(AddPackageReviewModel data) =>
    json.encode(data.toJson());

@freezed
class AddPackageReviewModel extends AddPackageReviewEntity
    with _$AddPackageReviewModel {
  const factory AddPackageReviewModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _AddPackageReviewModel;

  factory AddPackageReviewModel.fromJson(Map<String, dynamic> json) =>
      _$AddPackageReviewModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "user_uuid") String? userUuid,
    @JsonKey(name: "package_uuid") String? packageUuid,
    @JsonKey(name: "review_uuid") String? reviewUuid,
    @JsonKey(name: "communication") double? communication,
    @JsonKey(name: "service_described") double? serviceDescribed,
    @JsonKey(name: "recommended") double? recommended,
    @JsonKey(name: "source") String? source,
    @JsonKey(name: "review") String? review,
    @JsonKey(name: "media") List<String>? media,
    @JsonKey(name: "created_on") DateTime? createdOn,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
