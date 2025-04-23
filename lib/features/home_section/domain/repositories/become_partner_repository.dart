import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_lead_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/become_partner_entity.dart';

abstract class BecomePartnerRepository {
  Future<Either<Failure, BecomePartnerEntity>> addLead(
      AddLeadRequest addLeadRequest);
}
