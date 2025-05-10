// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBookingModelImpl _$$GetBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBookingModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$GetBookingModelImplToJson(
        _$GetBookingModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      booking: json['booking'] == null
          ? null
          : BookingModel.fromJson(json['booking'] as Map<String, dynamic>),
      reviewAverages: json['reviewAverages'] == null
          ? null
          : ReviewAveragesModel.fromJson(
              json['reviewAverages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'booking': instance.booking,
      'reviewAverages': instance.reviewAverages,
    };

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
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
      orderRescheduleDate: json['order_reschedule_date'] == null
          ? null
          : DateTime.parse(json['order_reschedule_date'] as String),
      orderRescheduleReason: json['order_reschedule_reason'] as String?,
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

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
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
      'order_reschedule_date': instance.orderRescheduleDate?.toIso8601String(),
      'order_reschedule_reason': instance.orderRescheduleReason,
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

_$ReviewAveragesModelImpl _$$ReviewAveragesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewAveragesModelImpl(
      id: json['_id'],
      communication: (json['Communication'] as num?)?.toDouble(),
      serviceDescribed: (json['ServiceDescribed'] as num?)?.toDouble(),
      recommended: (json['Recommended'] as num?)?.toDouble(),
      overallAverage: (json['overallAverage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReviewAveragesModelImplToJson(
        _$ReviewAveragesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'Communication': instance.communication,
      'ServiceDescribed': instance.serviceDescribed,
      'Recommended': instance.recommended,
      'overallAverage': instance.overallAverage,
    };
