import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/features/number-trivia/domain/entities/number_trivia.dart';

import 'package:tdd/features/number-trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd/features/number-trivia/domain/usecases/get_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepositry;
  setUp(() {
    mockNumberTriviaRepositry = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepositry);
  });

  final tNumber = 1;
  final tnumberTrivia = NumberTrivia(text: "test", number: 1);

  test('should get trivia for the bumber from the repository', () async {
    // arrange
    when(mockNumberTriviaRepositry.getConreteNumberTrivia(any))
        .thenAnswer((_) async => Right(tnumberTrivia));

    // act
    final result = await usecase.execute(number: tNumber);

    //assert
    expect(result, Right(tnumberTrivia));
    verify(mockNumberTriviaRepositry.getConreteNumberTrivia(42));
  });
}
