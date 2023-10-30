import 'package:quotes_app/features/random_quotes/domain/entities/quote.dart';

class QuoteModel extends Quote {
  const QuoteModel(
      {required String content, required String author, required String h})
      : super(h: h, content: content, author: author);

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(content: json['q'], author: json['a'], h: json['h']);
  }

// Map<String, dynamic> toJson() {
//   final map = <String, dynamic>{};
//   map['q'] = content;
//   map['a'] = author;
//   map['h'] = h;
//   return map;
// }
}
