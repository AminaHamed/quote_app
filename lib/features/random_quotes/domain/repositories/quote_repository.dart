import 'package:dartz/dartz.dart';
import 'package:quotes_app/features/random_quotes/domain/entities/quote.dart';

import '../../../../core/errors/failures.dart';

abstract class QuoteRepository {
  Future<Either<Failure, Quote>> getRandomQuote();
}
