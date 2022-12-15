// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Events _$$_EventsFromJson(Map<String, dynamic> json) => _$_Events(
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventsToJson(_$_Events instance) => <String, dynamic>{
      'events': instance.events,
    };

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      strLeague: json['strLeague'] as String?,
      strHomeTeam: json['strHomeTeam'] as String?,
      strAwayTeam: json['strAwayTeam'] as String?,
      intHomeScore: json['intHomeScore'] as String?,
      intAwayScore: json['intAwayScore'] as String?,
      dateEvent: json['dateEvent'] as String?,
      strStatus: json['strStatus'] as String?,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'strLeague': instance.strLeague,
      'strHomeTeam': instance.strHomeTeam,
      'strAwayTeam': instance.strAwayTeam,
      'intHomeScore': instance.intHomeScore,
      'intAwayScore': instance.intAwayScore,
      'dateEvent': instance.dateEvent,
      'strStatus': instance.strStatus,
    };
