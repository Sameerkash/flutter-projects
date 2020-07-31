import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd/core/errors/exceptions.dart';
import 'package:tdd/features/number-trivia/data/models/number_trivia_model.dart';
import 'package:http/http.dart' as http;


class MockhttpClient extends Mock implements http.Client{}

void main(){

  
}