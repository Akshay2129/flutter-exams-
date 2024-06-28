// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getapi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiModel _$GetApiModelFromJson(Map<String, dynamic> json) => GetApiModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetApiModelToJson(GetApiModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      badges: (json['badges'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'badges': instance.badges,
      'url': instance.url,
    };
