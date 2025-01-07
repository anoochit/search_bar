// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'body': instance.body,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      author: json['author'] as String?,
      excerpt: json['excerpt'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tag: (json['tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'author': instance.author,
      'excerpt': instance.excerpt,
      'categories': instance.categories,
      'tag': instance.tag,
      'date': instance.date?.toIso8601String(),
    };
