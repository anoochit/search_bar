import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post.freezed.dart';
part 'post.g.dart';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

@freezed
class Post with _$Post {
  const factory Post({
    Metadata? metadata,
    String? body,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    String? title,
    String? slug,
    String? author,
    String? excerpt,
    List<String>? categories,
    List<String>? tag,
    DateTime? date,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
