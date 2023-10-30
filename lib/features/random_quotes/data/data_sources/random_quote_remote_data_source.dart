import '../models/QuoteModel.dart';

abstract class RandomQuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}
