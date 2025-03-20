// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_messages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserMessageModel _$GetUserMessageModelFromJson(Map<String, dynamic> json) {
  return _GetUserMessageModel.fromJson(json);
}

/// @nodoc
mixin _$GetUserMessageModel {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "success_status")
  bool? get successStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserMessageModelCopyWith<GetUserMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserMessageModelCopyWith<$Res> {
  factory $GetUserMessageModelCopyWith(
          GetUserMessageModel value, $Res Function(GetUserMessageModel) then) =
      _$GetUserMessageModelCopyWithImpl<$Res, GetUserMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetUserMessageModelCopyWithImpl<$Res, $Val extends GetUserMessageModel>
    implements $GetUserMessageModelCopyWith<$Res> {
  _$GetUserMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetUserMessageModelImplCopyWith<$Res>
    implements $GetUserMessageModelCopyWith<$Res> {
  factory _$$GetUserMessageModelImplCopyWith(_$GetUserMessageModelImpl value,
          $Res Function(_$GetUserMessageModelImpl) then) =
      __$$GetUserMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUserMessageModelImplCopyWithImpl<$Res>
    extends _$GetUserMessageModelCopyWithImpl<$Res, _$GetUserMessageModelImpl>
    implements _$$GetUserMessageModelImplCopyWith<$Res> {
  __$$GetUserMessageModelImplCopyWithImpl(_$GetUserMessageModelImpl _value,
      $Res Function(_$GetUserMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$GetUserMessageModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserMessageModelImpl implements _GetUserMessageModel {
  const _$GetUserMessageModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$GetUserMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserMessageModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final DataModel? data;
  @override
  @JsonKey(name: "success_status")
  final bool? successStatus;

  @override
  String toString() {
    return 'GetUserMessageModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserMessageModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.successStatus, successStatus) ||
                other.successStatus == successStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, data, successStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserMessageModelImplCopyWith<_$GetUserMessageModelImpl> get copyWith =>
      __$$GetUserMessageModelImplCopyWithImpl<_$GetUserMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserMessageModelImplToJson(
      this,
    );
  }
}

abstract class _GetUserMessageModel implements GetUserMessageModel {
  const factory _GetUserMessageModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$GetUserMessageModelImpl;

  factory _GetUserMessageModel.fromJson(Map<String, dynamic> json) =
      _$GetUserMessageModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  DataModel? get data;
  @override
  @JsonKey(name: "success_status")
  bool? get successStatus;
  @override
  @JsonKey(ignore: true)
  _$$GetUserMessageModelImplCopyWith<_$GetUserMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "clientMessages")
  List<ClientMessageModel>? get clientMessages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sendOn")
  DateTime? get sendOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "clientMessages") List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") DateTime? sendOn});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? clientMessages = freezed,
    Object? sendOn = freezed,
  }) {
    return _then(_value.copyWith(
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      clientMessages: freezed == clientMessages
          ? _value.clientMessages
          : clientMessages // ignore: cast_nullable_to_non_nullable
              as List<ClientMessageModel>?,
      sendOn: freezed == sendOn
          ? _value.sendOn
          : sendOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "clientMessages") List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") DateTime? sendOn});
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? clientMessages = freezed,
    Object? sendOn = freezed,
  }) {
    return _then(_$DataModelImpl(
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      clientMessages: freezed == clientMessages
          ? _value._clientMessages
          : clientMessages // ignore: cast_nullable_to_non_nullable
              as List<ClientMessageModel>?,
      sendOn: freezed == sendOn
          ? _value.sendOn
          : sendOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "clientMessages")
      final List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") this.sendOn})
      : _clientMessages = clientMessages;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  final List<ClientMessageModel>? _clientMessages;
  @override
  @JsonKey(name: "clientMessages")
  List<ClientMessageModel>? get clientMessages {
    final value = _clientMessages;
    if (value == null) return null;
    if (_clientMessages is EqualUnmodifiableListView) return _clientMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "sendOn")
  final DateTime? sendOn;

  @override
  String toString() {
    return 'DataModel(userUuid: $userUuid, clientMessages: $clientMessages, sendOn: $sendOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            const DeepCollectionEquality()
                .equals(other._clientMessages, _clientMessages) &&
            (identical(other.sendOn, sendOn) || other.sendOn == sendOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userUuid,
      const DeepCollectionEquality().hash(_clientMessages), sendOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {@JsonKey(name: "user_uuid") final String? userUuid,
      @JsonKey(name: "clientMessages")
      final List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") final DateTime? sendOn}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "clientMessages")
  List<ClientMessageModel>? get clientMessages;
  @override
  @JsonKey(name: "sendOn")
  DateTime? get sendOn;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientMessageModel _$ClientMessageModelFromJson(Map<String, dynamic> json) {
  return _ClientMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ClientMessageModel {
  @JsonKey(name: "profileName")
  String? get profileName => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "parentServiceOffered")
  List<String>? get parentServiceOffered => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImage")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "chatMessage")
  List<ChatMessageModel>? get chatMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientMessageModelCopyWith<ClientMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientMessageModelCopyWith<$Res> {
  factory $ClientMessageModelCopyWith(
          ClientMessageModel value, $Res Function(ClientMessageModel) then) =
      _$ClientMessageModelCopyWithImpl<$Res, ClientMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profileName") String? profileName,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "parentServiceOffered") List<String>? parentServiceOffered,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "chatMessage") List<ChatMessageModel>? chatMessage});
}

/// @nodoc
class _$ClientMessageModelCopyWithImpl<$Res, $Val extends ClientMessageModel>
    implements $ClientMessageModelCopyWith<$Res> {
  _$ClientMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileName = freezed,
    Object? city = freezed,
    Object? partnerUuid = freezed,
    Object? parentServiceOffered = freezed,
    Object? profileImage = freezed,
    Object? chatMessage = freezed,
  }) {
    return _then(_value.copyWith(
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      parentServiceOffered: freezed == parentServiceOffered
          ? _value.parentServiceOffered
          : parentServiceOffered // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessage: freezed == chatMessage
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientMessageModelImplCopyWith<$Res>
    implements $ClientMessageModelCopyWith<$Res> {
  factory _$$ClientMessageModelImplCopyWith(_$ClientMessageModelImpl value,
          $Res Function(_$ClientMessageModelImpl) then) =
      __$$ClientMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profileName") String? profileName,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "parentServiceOffered") List<String>? parentServiceOffered,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "chatMessage") List<ChatMessageModel>? chatMessage});
}

/// @nodoc
class __$$ClientMessageModelImplCopyWithImpl<$Res>
    extends _$ClientMessageModelCopyWithImpl<$Res, _$ClientMessageModelImpl>
    implements _$$ClientMessageModelImplCopyWith<$Res> {
  __$$ClientMessageModelImplCopyWithImpl(_$ClientMessageModelImpl _value,
      $Res Function(_$ClientMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileName = freezed,
    Object? city = freezed,
    Object? partnerUuid = freezed,
    Object? parentServiceOffered = freezed,
    Object? profileImage = freezed,
    Object? chatMessage = freezed,
  }) {
    return _then(_$ClientMessageModelImpl(
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      parentServiceOffered: freezed == parentServiceOffered
          ? _value._parentServiceOffered
          : parentServiceOffered // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessage: freezed == chatMessage
          ? _value._chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientMessageModelImpl implements _ClientMessageModel {
  const _$ClientMessageModelImpl(
      {@JsonKey(name: "profileName") this.profileName,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "parentServiceOffered")
      final List<String>? parentServiceOffered,
      @JsonKey(name: "profileImage") this.profileImage,
      @JsonKey(name: "chatMessage") final List<ChatMessageModel>? chatMessage})
      : _parentServiceOffered = parentServiceOffered,
        _chatMessage = chatMessage;

  factory _$ClientMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientMessageModelImplFromJson(json);

  @override
  @JsonKey(name: "profileName")
  final String? profileName;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  final List<String>? _parentServiceOffered;
  @override
  @JsonKey(name: "parentServiceOffered")
  List<String>? get parentServiceOffered {
    final value = _parentServiceOffered;
    if (value == null) return null;
    if (_parentServiceOffered is EqualUnmodifiableListView)
      return _parentServiceOffered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "profileImage")
  final String? profileImage;
  final List<ChatMessageModel>? _chatMessage;
  @override
  @JsonKey(name: "chatMessage")
  List<ChatMessageModel>? get chatMessage {
    final value = _chatMessage;
    if (value == null) return null;
    if (_chatMessage is EqualUnmodifiableListView) return _chatMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClientMessageModel(profileName: $profileName, city: $city, partnerUuid: $partnerUuid, parentServiceOffered: $parentServiceOffered, profileImage: $profileImage, chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientMessageModelImpl &&
            (identical(other.profileName, profileName) ||
                other.profileName == profileName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            const DeepCollectionEquality()
                .equals(other._parentServiceOffered, _parentServiceOffered) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            const DeepCollectionEquality()
                .equals(other._chatMessage, _chatMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileName,
      city,
      partnerUuid,
      const DeepCollectionEquality().hash(_parentServiceOffered),
      profileImage,
      const DeepCollectionEquality().hash(_chatMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientMessageModelImplCopyWith<_$ClientMessageModelImpl> get copyWith =>
      __$$ClientMessageModelImplCopyWithImpl<_$ClientMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ClientMessageModel implements ClientMessageModel {
  const factory _ClientMessageModel(
      {@JsonKey(name: "profileName") final String? profileName,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "partner_uuid") final String? partnerUuid,
      @JsonKey(name: "parentServiceOffered")
      final List<String>? parentServiceOffered,
      @JsonKey(name: "profileImage") final String? profileImage,
      @JsonKey(name: "chatMessage")
      final List<ChatMessageModel>? chatMessage}) = _$ClientMessageModelImpl;

  factory _ClientMessageModel.fromJson(Map<String, dynamic> json) =
      _$ClientMessageModelImpl.fromJson;

  @override
  @JsonKey(name: "profileName")
  String? get profileName;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "parentServiceOffered")
  List<String>? get parentServiceOffered;
  @override
  @JsonKey(name: "profileImage")
  String? get profileImage;
  @override
  @JsonKey(name: "chatMessage")
  List<ChatMessageModel>? get chatMessage;
  @override
  @JsonKey(ignore: true)
  _$$ClientMessageModelImplCopyWith<_$ClientMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "sender")
  String? get sender => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  DateTime? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
          ChatMessageModel value, $Res Function(ChatMessageModel) then) =
      _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "sender") String? sender,
      @JsonKey(name: "timestamp") DateTime? timestamp,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? sender = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(_$ChatMessageModelImpl value,
          $Res Function(_$ChatMessageModelImpl) then) =
      __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "sender") String? sender,
      @JsonKey(name: "timestamp") DateTime? timestamp,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(_$ChatMessageModelImpl _value,
      $Res Function(_$ChatMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? sender = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ChatMessageModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl implements _ChatMessageModel {
  const _$ChatMessageModelImpl(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "sender") this.sender,
      @JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "status") this.status});

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "sender")
  final String? sender;
  @override
  @JsonKey(name: "timestamp")
  final DateTime? timestamp;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'ChatMessageModel(message: $message, sender: $sender, timestamp: $timestamp, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, sender, timestamp, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageModel implements ChatMessageModel {
  const factory _ChatMessageModel(
      {@JsonKey(name: "message") final String? message,
      @JsonKey(name: "sender") final String? sender,
      @JsonKey(name: "timestamp") final DateTime? timestamp,
      @JsonKey(name: "status") final String? status}) = _$ChatMessageModelImpl;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "sender")
  String? get sender;
  @override
  @JsonKey(name: "timestamp")
  DateTime? get timestamp;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
