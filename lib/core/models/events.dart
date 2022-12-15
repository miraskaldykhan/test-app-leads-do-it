import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';

part 'events.g.dart';

@freezed
class Events with _$Events {
  const factory Events({
    required List<Event> events,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}

@freezed
class Event with _$Event {
  const factory Event({
    required String? strLeague,
    required String? strHomeTeam,
    required String? strAwayTeam,
    required String? intHomeScore,
    required String? intAwayScore,
    required String? dateEvent,
    required String? strStatus,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
