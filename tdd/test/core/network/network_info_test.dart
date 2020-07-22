import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:tdd/core/network/network_info.dart';

class MockDataConnectionChechker extends Mock implements DataConnectionChecker {
}

void main() {
  NetworkInfoImpl networkInfo;
  MockDataConnectionChechker mockDataConnectionChechker;

  setUp(() {
    mockDataConnectionChechker = MockDataConnectionChechker();
    networkInfo = NetworkInfoImpl(mockDataConnectionChechker);
  });

  group('should forward the call to DataConnectionChecker.hasConnection', () {
    test('isConnected', () async {
      //arrange
      final tHasConnecyionFuture = Future.value(true);

      when(mockDataConnectionChechker.hasConnection)
          .thenAnswer((_) async => tHasConnecyionFuture);
      //act
      final result = await networkInfo.isConnected;
      // assert
      verify(mockDataConnectionChechker.hasConnection);
      expect(result, tHasConnecyionFuture);
    });
  });
}
