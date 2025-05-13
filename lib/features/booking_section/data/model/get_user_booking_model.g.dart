// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserBookingModelImpl _$$GetUserBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserBookingModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$GetUserBookingModelImplToJson(
        _$GetUserBookingModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      size: (json['size'] as num?)?.toInt(),
      userBookings: (json['userBookings'] as List<dynamic>?)
          ?.map((e) => UserBookingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'userBookings': instance.userBookings,
      'count': instance.count,
      'page': instance.page,
    };

_$UserBookingModelImpl _$$UserBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBookingModelImpl(
      profileName: json['profileName'] as String?,
      packageReviewAverage: (json['packageReviewAverage'] as num?)?.toDouble(),
      profileReviewAverage: (json['profileReviewAverage'] as num?)?.toDouble(),
      profileImage: json['profileImage'] as String?,
      megmoGigsCount: (json['megmoGigsCount'] as num?)?.toInt(),
      packageBookingCount: (json['PackageBookingCount'] as num?)?.toInt(),
      package: json['package'] == null
          ? null
          : PackageModel.fromJson(json['package'] as Map<String, dynamic>),
      bookingDetails: json['bookingDetails'] == null
          ? null
          : BookingDetailsModel.fromJson(
              json['bookingDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserBookingModelImplToJson(
        _$UserBookingModelImpl instance) =>
    <String, dynamic>{
      'profileName': instance.profileName,
      'packageReviewAverage': instance.packageReviewAverage,
      'profileReviewAverage': instance.profileReviewAverage,
      'profileImage': instance.profileImage,
      'megmoGigsCount': instance.megmoGigsCount,
      'PackageBookingCount': instance.packageBookingCount,
      'package': instance.package,
      'bookingDetails': instance.bookingDetails,
    };

_$BookingDetailsModelImpl _$$BookingDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingDetailsModelImpl(
      id: json['id'] as String?,
      packages: json['packages'] == null
          ? null
          : PackagesModel.fromJson(json['packages'] as Map<String, dynamic>),
      discount: (json['discount'] as num?)?.toDouble(),
      status: json['status'] as String?,
      statusLogs: (json['status_logs'] as List<dynamic>?)
          ?.map((e) => StatusLogModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingUuid: json['booking_uuid'] as String?,
      userUuid: json['user_uuid'] as String?,
      bookedOn: json['booked_on'] == null
          ? null
          : DateTime.parse(json['booked_on'] as String),
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      baseFare: (json['base_fare'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      bookingAddress: json['booking_address'] == null
          ? null
          : BookingAddressModel.fromJson(
              json['booking_address'] as Map<String, dynamic>),
      bookingSource: json['booking_source'] as String?,
    );

Map<String, dynamic> _$$BookingDetailsModelImplToJson(
        _$BookingDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packages': instance.packages,
      'discount': instance.discount,
      'status': instance.status,
      'status_logs': instance.statusLogs,
      'booking_uuid': instance.bookingUuid,
      'user_uuid': instance.userUuid,
      'booked_on': instance.bookedOn?.toIso8601String(),
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'base_fare': instance.baseFare,
      'amount': instance.amount,
      'booking_address': instance.bookingAddress,
      'booking_source': instance.bookingSource,
    };

_$BookingAddressModelImpl _$$BookingAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingAddressModelImpl(
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
      saveAs: json['save_as'] as String?,
    );

Map<String, dynamic> _$$BookingAddressModelImplToJson(
        _$BookingAddressModelImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'landmark': instance.landmark,
      'save_as': instance.saveAs,
    };

_$PackagesModelImpl _$$PackagesModelImplFromJson(Map<String, dynamic> json) =>
    _$PackagesModelImpl(
      id: json['id'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      packageUuid: json['package_uuid'] as String?,
    );

Map<String, dynamic> _$$PackagesModelImplToJson(_$PackagesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partner_uuid': instance.partnerUuid,
      'package_uuid': instance.packageUuid,
    };

_$PackageMoPackageModeldelImpl _$$PackageMoPackageModeldelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageMoPackageModeldelImpl(
      id: json['id'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      packageUuid: json['package_uuid'] as String?,
      packageName: json['package_name'] as String?,
      packageCoverImage: json['package_cover_image'] as String?,
    );

Map<String, dynamic> _$$PackageMoPackageModeldelImplToJson(
        _$PackageMoPackageModeldelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partner_uuid': instance.partnerUuid,
      'package_uuid': instance.packageUuid,
      'package_name': instance.packageName,
      'package_cover_image': instance.packageCoverImage,
    };

_$StatusLogModelImpl _$$StatusLogModelImplFromJson(Map<String, dynamic> json) =>
    _$StatusLogModelImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
      packageUuid: json['package_uuid'] as String?,
      bookingUuid: json['booking_uuid'],
    );

Map<String, dynamic> _$$StatusLogModelImplToJson(
        _$StatusLogModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'package_uuid': instance.packageUuid,
      'booking_uuid': instance.bookingUuid,
    };
