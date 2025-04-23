class AddLeadRequest {
  String salutation;
  String firstName;
  String lastName;
  String contactNumber;
  String alternateContactNumber;
  DateTime dateOfBirth;
  String gender;
  String emailAddress;
  String leadSource;
  String country;
  String state;
  String city;
  int pinCode;
  String eduction;
  List<String> serviceOffered;
  bool professionalExperience;
  bool termsAndConditions;
  String leadStatus;
  String leadStage;
  String leadOwner;
  String leadAssignedTo;
  String notes;

  AddLeadRequest({
    required this.salutation,
    required this.firstName,
    required this.lastName,
    required this.contactNumber,
    required this.alternateContactNumber,
    required this.dateOfBirth,
    required this.gender,
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
  });

  factory AddLeadRequest.fromJson(Map<String, dynamic> json) => AddLeadRequest(
        salutation: json["salutation"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        contactNumber: json["contact_number"],
        alternateContactNumber: json["alternate_contact_number"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        gender: json["gender"],
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
      );

  Map<String, dynamic> toJson() => {
        "salutation": salutation,
        "first_name": firstName,
        "last_name": lastName,
        "contact_number": contactNumber,
        "alternate_contact_number": alternateContactNumber,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "gender": gender,
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
      };
}
