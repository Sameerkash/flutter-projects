import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd/core/errors/failure.dart';
import 'package:tdd/core/usecases/usecase.dart';
import 'package:tdd/features/number-trivia/domain/entities/number_trivia.dart';
import 'package:tdd/features/number-trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
