import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quotes_app/core/api/end_points.dart';
import 'package:quotes_app/core/errors/exceptions.dart';

import '../models/QuoteModel.dart';

abstract class RandomQuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}

class RandomQuoteRemoteDataSourceImpl implements RandomQuoteRemoteDataSource {
  final http.Client client;

  RandomQuoteRemoteDataSourceImpl({required this.client});

  @override
  Future<QuoteModel> getRandomQuote() async {
    final http.Response response =
        await client.get(Uri.parse(EndPoints.randomQuote));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      if (data.isNotEmpty) {
        return QuoteModel.fromJson(data[0]);
      }
    }
    throw ServerException();
  }
}
