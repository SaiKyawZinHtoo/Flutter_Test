// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      json['id'] as String,
      json['name'] as String,
      json['job'] as String,
      int.parse(json['age'] as String)
          as String, // Convert age from String to int
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'job': instance.job,
      'age':
          instance.age.toString(), // Convert age from int to String if needed
    };
