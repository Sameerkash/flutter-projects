import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd/core/errors/exceptions.dart';
import 'package:tdd/features/number-trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:tdd/features/number-trivia/data/models/number_trivia_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/fixtures/fixture_reader.dart';

class MockhttpClient extends Mock implements http.Client {}

void main() {
  NumberTriviaRemoteDataSourceImpl dataSource;
  MockhttpClient mockhttpClient;

  setUp(() {
    mockhttpClient = MockhttpClient();
    dataSource = NumberTriviaRemoteDataSourceImpl(client: mockhttpClient);
  });

  group('getConcreteNumberTrivia', () {
    final tNumber = 1;

    test('''should perform a 
    GET request on a URL with 
    number being the endpoint
     and with application/json header''', () async {
      // arrange
      when(mockhttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response(fixture('trivia.json'), 200));
      // act
      dataSource.getConcreteNumberTrivia(tNumber);
      // assert
      verify(mockhttpClient.get('http://numbersapi.cpm/$tNumber', headers: {
        'Content-Type': 'application/json',
      }));
    });
  });
}
