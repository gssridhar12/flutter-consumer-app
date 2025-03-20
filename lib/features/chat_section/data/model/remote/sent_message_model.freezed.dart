// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sent_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SentMessageModel _$SentMessageModelFromJson(Map<String, dynamic> json) {
  return _SentMessageModel.fromJson(json);
}

/// @nodoc
mixin _$SentMessageModel {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DatumModel>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "success_status")
  bool? get successStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentMessageModelCopyWith<SentMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentMessageModelCopyWith<$Res> {
  factory $SentMessageModelCopyWith(
          SentMessageModel value, $Res Function(SentMessageModel) then) =
      _$SentMessageModelCopyWithImpl<$Res, SentMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DatumModel>? data,
      @JsonKey(name: "success_status") bool? successStatus});
}

/// @nodoc
class _$SentMessageModelCopyWithImpl<$Res, $Val extends SentMessageModel>
    implements $SentMessageModelCopyWith<$Res> {
  _$SentMessageModelCopyWithImpl(this._value, this._then);

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
              as List<DatumModel>?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentMessageModelImplCopyWith<$Res>
    implements $SentMessageModelCopyWith<$Res> {
  factory _$$SentMessageModelImplCopyWith(_$SentMessageModelImpl value,
          $Res Function(_$SentMessageModelImpl) then) =
      __$$SentMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DatumModel>? data,
      @JsonKey(name: "success_status") bool? successStatus});
}

/// @nodoc
class __$$SentMessageModelImplCopyWithImpl<$Res>
    extends _$SentMessageModelCopyWithImpl<$Res, _$SentMessageModelImpl>
    implements _$$SentMessageModelImplCopyWith<$Res> {
  __$$SentMessageModelImplCopyWithImpl(_$SentMessageModelImpl _value,
      $Res Function(_$SentMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$SentMessageModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentMessageModelImpl implements _SentMessageModel {
  const _$SentMessageModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DatumModel>? data,
      @JsonKey(name: "success_status") this.successStatus})
      : _data = data;

  factory _$SentMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentMessageModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DatumModel>? _data;
  @override
  @JsonKey(name: "data")
  List<DatumModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "success_status")
  final bool? successStatus;

  @override
  String toString() {
    return 'SentMessageModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentMessageModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.successStatus, successStatus) ||
                other.successStatus == successStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message,
      const DeepCollectionEquality().hash(_data), successStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentMessageModelImplCopyWith<_$SentMessageModelImpl> get copyWith =>
      __$$SentMessageModelImplCopyWithImpl<_$SentMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentMessageModelImplToJson(
      this,
    );
  }
}

abstract class _SentMessageModel implements SentMessageModel {
  const factory _SentMessageModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DatumModel>? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$SentMessageModelImpl;

  factory _SentMessageModel.fromJson(Map<String, dynamic> json) =
      _$SentMessageModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<DatumModel>? get data;
  @override
  @JsonKey(name: "success_status")
  bool? get successStatus;
  @override
  @JsonKey(ignore: true)
  _$$SentMessageModelImplCopyWith<_$SentMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumModel _$DatumModelFromJson(Map<String, dynamic> json) {
  return _DatumModel.fromJson(json);
}

/// @nodoc
mixin _$DatumModel {
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "clientMessages")
  List<ClientMessageModel>? get clientMessages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sendOn")
  DateTime? get sendOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumModelCopyWith<DatumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumModelCopyWith<$Res> {
  factory $DatumModelCopyWith(
          DatumModel value, $Res Function(DatumModel) then) =
      _$DatumModelCopyWithImpl<$Res, DatumModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "clientMessages") List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") DateTime? sendOn});
}

/// @nodoc
class _$DatumModelCopyWithImpl<$Res, $Val extends DatumModel>
    implements $DatumModelCopyWith<$Res> {
  _$DatumModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DatumModelImplCopyWith<$Res>
    implements $DatumModelCopyWith<$Res> {
  factory _$$DatumModelImplCopyWith(
          _$DatumModelImpl value, $Res Function(_$DatumModelImpl) then) =
      __$$DatumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "clientMessages") List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") DateTime? sendOn});
}

/// @nodoc
class __$$DatumModelImplCopyWithImpl<$Res>
    extends _$DatumModelCopyWithImpl<$Res, _$DatumModelImpl>
    implements _$$DatumModelImplCopyWith<$Res> {
  __$$DatumModelImplCopyWithImpl(
      _$DatumModelImpl _value, $Res Function(_$DatumModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? clientMessages = freezed,
    Object? sendOn = freezed,
  }) {
    return _then(_$DatumModelImpl(
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
class _$DatumModelImpl implements _DatumModel {
  const _$DatumModelImpl(
      {@JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "clientMessages")
      final List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") this.sendOn})
      : _clientMessages = clientMessages;

  factory _$DatumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumModelImplFromJson(json);

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
    return 'DatumModel(userUuid: $userUuid, clientMessages: $clientMessages, sendOn: $sendOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumModelImpl &&
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
  _$$DatumModelImplCopyWith<_$DatumModelImpl> get copyWith =>
      __$$DatumModelImplCopyWithImpl<_$DatumModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumModelImplToJson(
      this,
    );
  }
}

abstract class _DatumModel implements DatumModel {
  const factory _DatumModel(
      {@JsonKey(name: "user_uuid") final String? userUuid,
      @JsonKey(name: "clientMessages")
      final List<ClientMessageModel>? clientMessages,
      @JsonKey(name: "sendOn") final DateTime? sendOn}) = _$DatumModelImpl;

  factory _DatumModel.fromJson(Map<String, dynamic> json) =
      _$DatumModelImpl.fromJson;

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
  _$$DatumModelImplCopyWith<_$DatumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientMessageModel _$ClientMessageModelFromJson(Map<String, dynamic> json) {
  return _ClientMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ClientMessageModel {
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "chat_status")
  String? get chatStatus => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "chat_status") String? chatStatus,
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
    Object? partnerUuid = freezed,
    Object? chatStatus = freezed,
    Object? chatMessage = freezed,
  }) {
    return _then(_value.copyWith(
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      chatStatus: freezed == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "chat_status") String? chatStatus,
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
    Object? partnerUuid = freezed,
    Object? chatStatus = freezed,
    Object? chatMessage = freezed,
  }) {
    return _then(_$ClientMessageModelImpl(
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      chatStatus: freezed == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "chat_status") this.chatStatus,
      @JsonKey(name: "chatMessage") final List<ChatMessageModel>? chatMessage})
      : _chatMessage = chatMessage;

  factory _$ClientMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientMessageModelImplFromJson(json);

  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  @override
  @JsonKey(name: "chat_status")
  final String? chatStatus;
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
    return 'ClientMessageModel(partnerUuid: $partnerUuid, chatStatus: $chatStatus, chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientMessageModelImpl &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.chatStatus, chatStatus) ||
                other.chatStatus == chatStatus) &&
            const DeepCollectionEquality()
                .equals(other._chatMessage, _chatMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, partnerUuid, chatStatus,
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
      {@JsonKey(name: "partner_uuid") final String? partnerUuid,
      @JsonKey(name: "chat_status") final String? chatStatus,
      @JsonKey(name: "chatMessage")
      final List<ChatMessageModel>? chatMessage}) = _$ClientMessageModelImpl;

  factory _ClientMessageModel.fromJson(Map<String, dynamic> json) =
      _$ClientMessageModelImpl.fromJson;

  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "chat_status")
  String? get chatStatus;
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
