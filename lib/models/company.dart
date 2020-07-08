import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable(nullable: null)
class Company {
  final String name;

  Company(this.name);

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
