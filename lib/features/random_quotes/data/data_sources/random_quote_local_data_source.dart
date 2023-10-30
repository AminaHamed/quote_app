import 'package:quotes_app/features/random_quotes/data/models/QuoteModel.dart';

abstract class RandomQuoteLocalDataSource {
  Future<QuoteModel> getLastRandomQuote();

  Future<void> cacheQuote(QuoteModel quote);
}
