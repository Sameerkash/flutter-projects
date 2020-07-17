import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/features/number-trivia/data/models/number_trivia_model.dart';
import 'package:tdd/features/number-trivia/domain/entities/number_trivia.dart';
import 'dart:convert';

import '../../../../core/fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: "Test Text");

  test('Should be a subclass of NumberTrivia Entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model Json number is an integer', () async {
      //arranage
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });

    test('should return a valid model Json number is a double', () async {
      //arranage
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });

  group("toJson", () {
    test('should return valid json', () async {
      //act
      final result = tNumberTriviaModel.toJson();
      //assert
      final match = {
        "text": "Test Text",
        "number": 1,
      };
      expect(result, match);
    });
  });
}
