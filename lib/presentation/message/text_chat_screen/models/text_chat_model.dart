import 'dart:convert';

class TextChatModel {
  final Author author;
  final int createdAt;
  final String id;
  final String status;
  final String text;
  final String type;
  final int height;
  final String name;
  final int size;
  final String uri;
  final int width;
  final String mimeType;
  final Duration? duration;

  TextChatModel({
    required this.author,
    required this.createdAt,
    required this.id,
    required this.status,
    required this.text,
    required this.type,
    required this.height,
    required this.name,
    required this.size,
    required this.uri,
    required this.width,
    required this.mimeType,
    this.duration,
  });

  TextChatModel copyWith({
    Author? author,
    int? createdAt,
    String? id,
    String? status,
    String? text,
    String? type,
    int? height,
    String? name,
    int? size,
    String? uri,
    int? width,
    String? mimeType,
    Duration? duration,
  }) =>
      TextChatModel(
        author: author ?? this.author,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        status: status ?? this.status,
        text: text ?? this.text,
        type: type ?? this.type,
        height: height ?? this.height,
        name: name ?? this.name,
        size: size ?? this.size,
        uri: uri ?? this.uri,
        width: width ?? this.width,
        mimeType: mimeType ?? this.mimeType,
        duration: duration ?? this.duration,
      );

  factory TextChatModel.fromJson(String str) =>
      TextChatModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TextChatModel.fromMap(Map<String, dynamic> json) => TextChatModel(
        author: Author.fromMap(json["author"]),
        createdAt: json["createdAt"],
        id: json["id"],
        status: json["status"],
        text: json["text"],
        type: json["type"],
        height: json["height"],
        name: json["name"],
        size: json["size"],
        uri: json["uri"],
        width: json["width"],
        mimeType: json["mimeType"],
        duration: json["duration"],
      );

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = {
      "author": author.toMap(),
      "createdAt": createdAt,
      "id": id,
      "status": status,
      "text": text,
      "type": type,
      "height": height,
      "name": name,
      "size": size,
      "uri": uri,
      "width": width,
      "mimeType": mimeType,
    };
    if (duration != null) {
      map["duration"] = duration!.inMilliseconds;
    }
    return map;
  }
}

class Author {
  final String firstName;
  final String id;
  final String lastName;
  final String imageUrl;

  Author({
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.imageUrl,
  });

  Author copyWith({
    String? firstName,
    String? id,
    String? lastName,
    String? imageUrl,
  }) =>
      Author(
        firstName: firstName ?? this.firstName,
        id: id ?? this.id,
        lastName: lastName ?? this.lastName,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory Author.fromJson(String str) => Author.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Author.fromMap(Map<String, dynamic> json) => Author(
        firstName: json["firstName"],
        id: json["id"],
        lastName: json["lastName"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toMap() => {
        "firstName": firstName,
        "id": id,
        "lastName": lastName,
        "imageUrl": imageUrl,
      };
}
