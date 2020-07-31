import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd/core/errors/exceptions.dart';
import 'package:tdd/features/number-trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd/features/number-trivia/data/models/number_trivia_model.dart';

import '../../../../core/fixtures/fixture_reader.dart';

class MockSahredPreferences extends Mock implements SharedPreferences {}

void main() {
  NumberTriviaLocalDataSourceImpl dataStore;
  MockSahredPreferences mockSahredPreferences;

  setUp(() {
    mockSahredPreferences = MockSahredPreferences();
    dataStore = NumberTriviaLocalDataSourceImpl(
        sharedPreferences: mockSahredPreferences);
  });

  group('getLastNumberTrivia', () {
    final tNumberTriviaModel =
        NumberTriviaModel.fromJson(json.decode(fixture('trivia_cached.json')));
    test(
        'should return NumberTrivia from SharedPreferneces when there is one from the cache',
        () async {
      //arrange
      when(mockSahredPreferences.getString(any))
          .thenReturn(fixture('trivia_cached.json'));
      // act
      final result = await dataStore.getLastNumberTrivia();
      //assert
      verify(mockSahredPreferences.getString(CACHED_NUMBER_TRIVIA));
      expect(result, equals(tNumberTriviaModel));
    });

    // test('should throw CacheException when there is not a cached value',
    //     () async {
    //   //arrange
    //   when(mockSahredPreferences.getString(any)).thenReturn(null);
    //   // act
    //   final call = dataStore.getLastNumberTrivia;
    //   //assert
    //   expect(() => call(), throwsA(TypeMatcher<CacheException>()));
    // });
  });

  group('CacheNumberTrivia', () {
    final tNumberTriviaModel =
        NumberTriviaModel(number: 1, text: 'test trivia');
    test('Should call SharedPreferences to cache the data', () async {
      //arrange
      //act
      dataStore.cacheNumberTrivia(tNumberTriviaModel);
      //assert
      final expectedJsonString = json.encode(tNumberTriviaModel.toJson());
      verify(mockSahredPreferences.setString(
          CACHED_NUMBER_TRIVIA, expectedJsonString));
    });
  });
}
