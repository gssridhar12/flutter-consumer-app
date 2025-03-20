import 'dart:developer';

import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/become_partner_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_lead_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/become_partner_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/become_partner_repository.dart';

class BecomePartnerRepositoryImpl implements BecomePartnerRepository {
  final BecomePartnerRemoteDataSource remoteDatasource;

  BecomePartnerRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Either<Failure, BecomePartnerEntity>> addLead(
      AddLeadRequest addLeadRequest) async {
    try {
      final partner = await remoteDatasource.addlead(addLeadRequest);
      log(partner.message);

      return Right(partner);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }
}
