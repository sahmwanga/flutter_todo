// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['id'] as int,
    json['name'] as String,
    json['username'] as String,
    json['email'] as String,
    json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    json['company'] == null
        ? null
        : Company.fromJson(json['company'] as Map<String, dynamic>),
    json['phone'] as String,
    json['website'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
      'address': instance.address,
    };
