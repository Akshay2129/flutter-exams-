import 'package:json_annotation/json_annotation.dart';

part 'getapi_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GetApiModel {
  Data? data;
  GetApiModel({this.data});
  factory GetApiModel.fromJson(Map<String, dynamic> json) =>
      _$GetApiModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetApiModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data {
  List<Items>? items;
  Data({this.items});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Items {
  String? name;
  String? icon;
  int? badges;
  String? url;
  Items({this.name, this.icon, this.badges, this.url});
  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
