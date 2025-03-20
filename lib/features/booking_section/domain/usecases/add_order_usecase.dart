import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_order_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';

class AddOrderUseCase {
  final BookingRepository repository;

  AddOrderUseCase({required this.repository});

  Future<Either<Failure, AddOrderEntity>> execute(
          {required AddOrderRequest addOrderRequest}) async =>
      await repository.addOrder(addOrderRequest: addOrderRequest);
}
