import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:tdd/core/platform/network_info.dart';
import 'package:tdd/features/number-trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd/features/number-trivia/data/datasources/number_trivia_remote_data_source.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/number_trivia.dart';
import '../../domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl(
      {@required this.remoteDataSource,
      @required this.localDataSource,
      @required this.networkInfo});

  @override
  Future<Either<Failure, NumberTrivia>> getConreteNumberTrivia(int number) {
    // TODO: implement getConreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
