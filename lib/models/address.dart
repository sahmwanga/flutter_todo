import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(nullable: null)
class Address {
  final String street;
  final String city;
  final String zipcode;

  Address(this.street, this.city, this.zipcode);

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
