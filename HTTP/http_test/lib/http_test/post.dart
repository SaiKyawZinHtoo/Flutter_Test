// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Post {
  final int id;
  final String slug;
  final String url;
  final String title;
  final String content;
  final String image;
  final String thumbnail;
  final String status;
  final String category;
  final String publishedAt;
  final String updatedAt;
  final int userId;
  Post({
    required this.id,
    required this.slug,
    required this.url,
    required this.title,
    required this.content,
    required this.image,
    required this.thumbnail,
    required this.status,
    required this.category,
    required this.publishedAt,
    required this.updatedAt,
    required this.userId,
  });

  Post copyWith({
    int? id,
    String? slug,
    String? url,
    String? title,
    String? content,
    String? image,
    String? thumbnail,
    String? status,
    String? category,
    String? publishedAt,
    String? updatedAt,
    int? userId,
  }) {
    return Post(
      id: id ?? this.id,
      slug: slug ?? this.slug,
      url: url ?? this.url,
      title: title ?? this.title,
      content: content ?? this.content,
      image: image ?? this.image,
      thumbnail: thumbnail ?? this.thumbnail,
      status: status ?? this.status,
      category: category ?? this.category,
      publishedAt: publishedAt ?? this.publishedAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'slug': slug,
      'url': url,
      'title': title,
      'content': content,
      'image': image,
      'thumbnail': thumbnail,
      'status': status,
      'category': category,
      'publishedAt': publishedAt,
      'updatedAt': updatedAt,
      'userId': userId,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] as int,
      slug: map['slug'] as String,
      url: map['url'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      image: map['image'] as String,
      thumbnail: map['thumbnail'] as String,
      status: map['status'] as String,
      category: map['category'] as String,
      publishedAt: map['publishedAt'] as String,
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(id: $id, slug: $slug, url: $url, title: $title, content: $content, image: $image, thumbnail: $thumbnail, status: $status, category: $category, publishedAt: $publishedAt, updatedAt: $updatedAt, userId: $userId)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.slug == slug &&
        other.url == url &&
        other.title == title &&
        other.content == content &&
        other.image == image &&
        other.thumbnail == thumbnail &&
        other.status == status &&
        other.category == category &&
        other.publishedAt == publishedAt &&
        other.updatedAt == updatedAt &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        slug.hashCode ^
        url.hashCode ^
        title.hashCode ^
        content.hashCode ^
        image.hashCode ^
        thumbnail.hashCode ^
        status.hashCode ^
        category.hashCode ^
        publishedAt.hashCode ^
        updatedAt.hashCode ^
        userId.hashCode;
  }
}
