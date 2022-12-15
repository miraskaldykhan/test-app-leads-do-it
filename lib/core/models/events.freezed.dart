// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
mixin _$Events {
  List<Event> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res, Events>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res, $Val extends Events>
    implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$$_EventsCopyWith(_$_Events value, $Res Function(_$_Events) then) =
      __$$_EventsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$_EventsCopyWithImpl<$Res>
    extends _$EventsCopyWithImpl<$Res, _$_Events>
    implements _$$_EventsCopyWith<$Res> {
  __$$_EventsCopyWithImpl(_$_Events _value, $Res Function(_$_Events) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_Events(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Events implements _Events {
  const _$_Events({required final List<Event> events}) : _events = events;

  factory _$_Events.fromJson(Map<String, dynamic> json) =>
      _$$_EventsFromJson(json);

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'Events(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Events &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsCopyWith<_$_Events> get copyWith =>
      __$$_EventsCopyWithImpl<_$_Events>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventsToJson(
      this,
    );
  }
}

abstract class _Events implements Events {
  const factory _Events({required final List<Event> events}) = _$_Events;

  factory _Events.fromJson(Map<String, dynamic> json) = _$_Events.fromJson;

  @override
  List<Event> get events;
  @override
  @JsonKey(ignore: true)
  _$$_EventsCopyWith<_$_Events> get copyWith =>
      throw _privateConstructorUsedError;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String? get strLeague => throw _privateConstructorUsedError;
  String? get strHomeTeam => throw _privateConstructorUsedError;
  String? get strAwayTeam => throw _privateConstructorUsedError;
  String? get intHomeScore => throw _privateConstructorUsedError;
  String? get intAwayScore => throw _privateConstructorUsedError;
  String? get dateEvent => throw _privateConstructorUsedError;
  String? get strStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String? strLeague,
      String? strHomeTeam,
      String? strAwayTeam,
      String? intHomeScore,
      String? intAwayScore,
      String? dateEvent,
      String? strStatus});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strLeague = freezed,
    Object? strHomeTeam = freezed,
    Object? strAwayTeam = freezed,
    Object? intHomeScore = freezed,
    Object? intAwayScore = freezed,
    Object? dateEvent = freezed,
    Object? strStatus = freezed,
  }) {
    return _then(_value.copyWith(
      strLeague: freezed == strLeague
          ? _value.strLeague
          : strLeague // ignore: cast_nullable_to_non_nullable
              as String?,
      strHomeTeam: freezed == strHomeTeam
          ? _value.strHomeTeam
          : strHomeTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      strAwayTeam: freezed == strAwayTeam
          ? _value.strAwayTeam
          : strAwayTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      intHomeScore: freezed == intHomeScore
          ? _value.intHomeScore
          : intHomeScore // ignore: cast_nullable_to_non_nullable
              as String?,
      intAwayScore: freezed == intAwayScore
          ? _value.intAwayScore
          : intAwayScore // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEvent: freezed == dateEvent
          ? _value.dateEvent
          : dateEvent // ignore: cast_nullable_to_non_nullable
              as String?,
      strStatus: freezed == strStatus
          ? _value.strStatus
          : strStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? strLeague,
      String? strHomeTeam,
      String? strAwayTeam,
      String? intHomeScore,
      String? intAwayScore,
      String? dateEvent,
      String? strStatus});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strLeague = freezed,
    Object? strHomeTeam = freezed,
    Object? strAwayTeam = freezed,
    Object? intHomeScore = freezed,
    Object? intAwayScore = freezed,
    Object? dateEvent = freezed,
    Object? strStatus = freezed,
  }) {
    return _then(_$_Event(
      strLeague: freezed == strLeague
          ? _value.strLeague
          : strLeague // ignore: cast_nullable_to_non_nullable
              as String?,
      strHomeTeam: freezed == strHomeTeam
          ? _value.strHomeTeam
          : strHomeTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      strAwayTeam: freezed == strAwayTeam
          ? _value.strAwayTeam
          : strAwayTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      intHomeScore: freezed == intHomeScore
          ? _value.intHomeScore
          : intHomeScore // ignore: cast_nullable_to_non_nullable
              as String?,
      intAwayScore: freezed == intAwayScore
          ? _value.intAwayScore
          : intAwayScore // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEvent: freezed == dateEvent
          ? _value.dateEvent
          : dateEvent // ignore: cast_nullable_to_non_nullable
              as String?,
      strStatus: freezed == strStatus
          ? _value.strStatus
          : strStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event implements _Event {
  const _$_Event(
      {required this.strLeague,
      required this.strHomeTeam,
      required this.strAwayTeam,
      required this.intHomeScore,
      required this.intAwayScore,
      required this.dateEvent,
      required this.strStatus});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  final String? strLeague;
  @override
  final String? strHomeTeam;
  @override
  final String? strAwayTeam;
  @override
  final String? intHomeScore;
  @override
  final String? intAwayScore;
  @override
  final String? dateEvent;
  @override
  final String? strStatus;

  @override
  String toString() {
    return 'Event(strLeague: $strLeague, strHomeTeam: $strHomeTeam, strAwayTeam: $strAwayTeam, intHomeScore: $intHomeScore, intAwayScore: $intAwayScore, dateEvent: $dateEvent, strStatus: $strStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.strLeague, strLeague) ||
                other.strLeague == strLeague) &&
            (identical(other.strHomeTeam, strHomeTeam) ||
                other.strHomeTeam == strHomeTeam) &&
            (identical(other.strAwayTeam, strAwayTeam) ||
                other.strAwayTeam == strAwayTeam) &&
            (identical(other.intHomeScore, intHomeScore) ||
                other.intHomeScore == intHomeScore) &&
            (identical(other.intAwayScore, intAwayScore) ||
                other.intAwayScore == intAwayScore) &&
            (identical(other.dateEvent, dateEvent) ||
                other.dateEvent == dateEvent) &&
            (identical(other.strStatus, strStatus) ||
                other.strStatus == strStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, strLeague, strHomeTeam,
      strAwayTeam, intHomeScore, intAwayScore, dateEvent, strStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final String? strLeague,
      required final String? strHomeTeam,
      required final String? strAwayTeam,
      required final String? intHomeScore,
      required final String? intAwayScore,
      required final String? dateEvent,
      required final String? strStatus}) = _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String? get strLeague;
  @override
  String? get strHomeTeam;
  @override
  String? get strAwayTeam;
  @override
  String? get intHomeScore;
  @override
  String? get intAwayScore;
  @override
  String? get dateEvent;
  @override
  String? get strStatus;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
