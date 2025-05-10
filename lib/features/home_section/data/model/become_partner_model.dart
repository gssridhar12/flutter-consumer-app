import 'package:flutter_consumer_app/features/home_section/domain/entities/response/become_partner_entity.dart';

class BecomePartnerModel extends BecomePartnerEntity {
  BecomePartnerModel({
    required String code,
    required String message,
    required Data data,
    required bool successStatus,
    // Add any additional parameters if needed
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  factory BecomePartnerModel.fromJson(Map<String, dynamic> json) =>
      BecomePartnerModel(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        successStatus: json["success_status"],
        // Add any additional parameters if needed
      );
}

class DataModel extends Data {
  DataModel({
    required String id,
    required String salutation,
    required String firstName,
    required String lastName,
    required DateTime dateOfBirth,
    required String gender,
    required String contactNumber,
    required String alternateContactNumber,
    required String emailAddress,
    required String leadSource,
    required String country,
    required String state,
    required String city,
    required int pinCode,
    required String eduction,
    required List<String> serviceOffered,
    required String professionalExperience,
    required String termsAndConditions,
    required String leadStatus,
    required String leadStage,
    required String leadOwner,
    required String leadAssignedTo,
    required String notes,
    required DateTime createdDateTime,
    required DateTime modifiedDateTime,
    // Add any additional parameters if needed
  }) : super(
          id: id,
          salutation: salutation,
          firstName: firstName,
          lastName: lastName,
          dateOfBirth: dateOfBirth,
          gender: gender,
          contactNumber: contactNumber,
          alternateContactNumber: alternateContactNumber,
          emailAddress: emailAddress,
          leadSource: leadSource,
          country: country,
          state: state,
          city: city,
          pinCode: pinCode,
          eduction: eduction,
          serviceOffered: serviceOffered,
          professionalExperience: professionalExperience,
          termsAndConditions: termsAndConditions,
          leadStatus: leadStatus,
          leadStage: leadStage,
          leadOwner: leadOwner,
          leadAssignedTo: leadAssignedTo,
          notes: notes,
          createdDateTime: createdDateTime,
          modifiedDateTime: modifiedDateTime,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        id: json["id"],
        salutation: json["salutation"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        gender: json["gender"],
        contactNumber: json["contact_number"],
        alternateContactNumber: json["alternate_contact_number"],
        emailAddress: json["email_address"],
        leadSource: json["lead_source"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        pinCode: json["pin_code"],
        eduction: json["eduction"],
        serviceOffered: List<String>.from(json["service_offered"].map((x) => x)),
        professionalExperience: json["professional_experience"],
        termsAndConditions: json["terms_and_conditions"],
        leadStatus: json["lead_status"],
        leadStage: json["lead_stage"],
        leadOwner: json["lead_owner"],
        leadAssignedTo: json["lead_assigned_to"],
        notes: json["notes"],
        createdDateTime: DateTime.parse(json["created_date_time"]),
        modifiedDateTime: DateTime.parse(json["modified_date_time"]),
        // Add any additional parameters if needed
      );
}