import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'user.g.dart';

@JsonSerializable()
@immutable
final class User with EquatableMixin {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [userId, id, title, body];

  User copyWith({
   final int? userId,
   final int? id,
   final String? title,
   final String? body,
  }) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
