import 'dart:convert';

import 'package:quotes_app/core/errors/exceptions.dart';
import 'package:quotes_app/core/utils/app_strings.dart';
import 'package:quotes_app/features/random_quotes/data/models/QuoteModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class RandomQuoteLocalDataSource {
  Future<QuoteModel> getLastRandomQuote();

  Future<void> cacheQuote(QuoteModel quote);
}

class RandomQuoteLocalDataSourceImpl implements RandomQuoteLocalDataSource {
  final SharedPreferences sharedPreferences;

  RandomQuoteLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<QuoteModel> getLastRandomQuote() {
    final jsonString =
        sharedPreferences.getString(AppStrings.cachedRandomQuote);
    if (jsonString != null) {
      final cacheRandomQuote =
          Future.value(QuoteModel.fromJson(json.decode(jsonString)));
      return cacheRandomQuote;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheQuote(QuoteModel quote) {
    return sharedPreferences.setString(
        AppStrings.cachedRandomQuote, json.encode(quote));
  }
}
