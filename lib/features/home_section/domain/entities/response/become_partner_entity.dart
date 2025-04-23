class BecomePartnerEntity {
  String code;
  String message;
  Data data;
  bool successStatus;

  BecomePartnerEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });

  factory BecomePartnerEntity.fromJson(Map<String, dynamic> json) =>
      BecomePartnerEntity(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        successStatus: json["success_status"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
        "success_status": successStatus,
      };
}

class Data {
  String id;
  String salutation;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String gender;
  String contactNumber;
  String alternateContactNumber;
  String emailAddress;
  String leadSource;
  String country;
  String state;
  String city;
  int pinCode;
  String eduction;
  List<String> serviceOffered;
  String professionalExperience;
  String termsAndConditions;
  String leadStatus;
  String leadStage;
  String leadOwner;
  String leadAssignedTo;
  String notes;
  DateTime createdDateTime;
  DateTime modifiedDateTime;

  Data({
    required this.id,
    required this.salutation,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.gender,
    required this.contactNumber,
    required this.alternateContactNumber,
    required this.emailAddress,
    required this.leadSource,
    required this.country,
    required this.state,
    required this.city,
    required this.pinCode,
    required this.eduction,
    required this.serviceOffered,
    required this.professionalExperience,
    required this.termsAndConditions,
    required this.leadStatus,
    required this.leadStage,
    required this.leadOwner,
    required this.leadAssignedTo,
    required this.notes,
    required this.createdDateTime,
    required this.modifiedDateTime,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        serviceOffered:
            List<String>.from(json["service_offered"].map((x) => x)),
        professionalExperience: json["professional_experience"],
        termsAndConditions: json["terms_and_conditions"],
        leadStatus: json["lead_status"],
        leadStage: json["lead_stage"],
        leadOwner: json["lead_owner"],
        leadAssignedTo: json["lead_assigned_to"],
        notes: json["notes"],
        createdDateTime: DateTime.parse(json["created_date_time"]),
        modifiedDateTime: DateTime.parse(json["modified_date_time"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "salutation": salutation,
        "first_name": firstName,
        "last_name": lastName,
        "date_of_birth": dateOfBirth.toIso8601String(),
        "gender": gender,
        "contact_number": contactNumber,
        "alternate_contact_number": alternateContactNumber,
        "email_address": emailAddress,
        "lead_source": leadSource,
        "country": country,
        "state": state,
        "city": city,
        "pin_code": pinCode,
        "eduction": eduction,
        "service_offered": List<dynamic>.from(serviceOffered.map((x) => x)),
        "professional_experience": professionalExperience,
        "terms_and_conditions": termsAndConditions,
        "lead_status": leadStatus,
        "lead_stage": leadStage,
        "lead_owner": leadOwner,
        "lead_assigned_to": leadAssignedTo,
        "notes": notes,
        "created_date_time": createdDateTime.toIso8601String(),
        "modified_date_time": modifiedDateTime.toIso8601String(),
      };
}
