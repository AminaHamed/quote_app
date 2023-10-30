import 'package:dartz/dartz.dart';
import 'package:quotes_app/core/errors/failures.dart';
import 'package:quotes_app/core/usecases/usecase.dart';
import 'package:quotes_app/features/random_quotes/domain/entities/quote.dart';
import 'package:quotes_app/features/random_quotes/domain/repositories/quote_repository.dart';

class GetRandomQuote implements UseCase<Quote, NoParams> {
  final QuoteRepository quoteRepository;

  GetRandomQuote({required this.quoteRepository});

  @override
  Future<Either<Failure, Quote>> call(NoParams params) =>
      quoteRepository.getRandomQuote();
}
