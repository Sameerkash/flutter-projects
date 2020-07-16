import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/core/usecases/usecase.dart';
import 'package:tdd/features/number-trivia/domain/entities/number_trivia.dart';

import 'package:tdd/features/number-trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd/features/number-trivia/domain/usecases/get_randomnumbertrivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepositry;
  setUp(() {
    mockNumberTriviaRepositry = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepositry);
  });

  // final tNumber = 1;
  final tnumberTrivia = NumberTrivia(text: "test", number: 1);

  test('should get trivia from the repository', () async {
    // arrange
    when(mockNumberTriviaRepositry.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tnumberTrivia));

    // act
    final result = await usecase(NoParams());

    //assert
    expect(result, Right(tnumberTrivia));
    verify(mockNumberTriviaRepositry.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepositry);
  });
}
