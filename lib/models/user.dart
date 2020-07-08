import 'package:json_annotation/json_annotation.dart';

import './address.dart';
import './company.dart';

part 'user.g.dart';

@JsonSerializable(nullable: null)
class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  Company company;
  Address address;

  User(
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.company,
    this.phone,
    this.website,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
