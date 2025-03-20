import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_lead_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/become_partner_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/become_partner_repository.dart';

class AddLeadUseCase {
  final BecomePartnerRepository repository;

  AddLeadUseCase({required this.repository});

  Future<Either<Failure, BecomePartnerEntity>> exicute(AddLeadRequest addLeadRequest) async =>
      await repository.addLead(addLeadRequest);
}
