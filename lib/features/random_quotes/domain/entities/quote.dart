import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final String content;
  final String author;
  final String h;

  const Quote({required this.content, required this.author, required this.h});

  @override
  List<Object?> get props => [content, author];
}
