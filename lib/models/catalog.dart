// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OngoingRequest {
  static List<Item> items = [
    Item(
      image: "https://source.unsplash.com/50x50/?portrait",
      title: 'Shivam',
      subtitle: 'A4',
      description: '2020',
    ),
  ];
}

class Item {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  Item({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  Item copyWith({
    String? image,
    String? title,
    String? subtitle,
    String? description,
  }) {
    return Item(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'subtitle': subtitle,
      'description': description,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      image: map['image'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(image: $image, title: $title, subtitle: $subtitle, description: $description)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.title == title &&
      other.subtitle == subtitle &&
      other.description == description;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      description.hashCode;
  }
}
