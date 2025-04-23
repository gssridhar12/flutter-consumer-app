import 'dart:convert';

import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/child_category_model.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_consumer_app/features/home_section/data/model/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoryModel> getParentCategory();
  Future<ChildCategoryModelClass> getChildCategory();
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final http.Client httpClient;

  CategoryRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<CategoryModel> getParentCategory() async {
    var requestBody = {"page_number": 0, "page_size": 10};

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/parent-category/getSearchScreen/v2');
    final responce = await httpClient.post(url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(requestBody));
    if (responce.statusCode == 200) {
      return CategoryModel.fromJson(json.decode(responce.body));
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<ChildCategoryModelClass> getChildCategory() async {
    var requestBody = {"page_number": 0, "page_size": 10};
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/child-category/getCategoryScreen/v2');
    final responce = await httpClient.post(url,
        headers: headers, body: jsonEncode(requestBody));
    if (responce.statusCode == 200) {
      return ChildCategoryModelClass.fromJson(json.decode(responce.body));
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
