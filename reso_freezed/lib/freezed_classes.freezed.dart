// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

abstract class _$User {
  String get name;
  int get age;

  User copyWith({String name, int age});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(this.name, this.age);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'User(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _User &&
        (identical(other.name, name) || other.name == name) &&
        (identical(other.age, age) || other.age == age);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ name.hashCode ^ age.hashCode;

  @override
  _$_User copyWith({
    Object name = immutable,
    Object age = immutable,
  }) {
    return _$_User(
      name == immutable ? this.name : name as String,
      age == immutable ? this.age : age as int,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(String name, int age) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  int get age;

  @override
  _User copyWith({String name, int age});
}

abstract class _$OperationNested {
  int get value;

  OperationNested copyWith({int value});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtratc(int value),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtratc(int value),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result subtratc(_Subtract value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result subtratc(_Subtract value),
    @required Result orElse(),
  });
}

class _$_Add implements _Add {
  const _$_Add(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'OperationNested.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _Add &&
        (identical(other.value, value) || other.value == value);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;

  @override
  _$_Add copyWith({
    Object value = immutable,
  }) {
    return _$_Add(
      value == immutable ? this.value : value as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtratc(int value),
  }) {
    assert(add != null);
    assert(subtratc != null);
    return add(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtratc(int value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result subtratc(_Subtract value),
  }) {
    assert(add != null);
    assert(subtratc != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result subtratc(_Subtract value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements OperationNested {
  const factory _Add(int value) = _$_Add;

  @override
  int get value;

  @override
  _Add copyWith({int value});
}

class _$_Subtract implements _Subtract {
  const _$_Subtract(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'OperationNested.subtratc(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _Subtract &&
        (identical(other.value, value) || other.value == value);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;

  @override
  _$_Subtract copyWith({
    Object value = immutable,
  }) {
    return _$_Subtract(
      value == immutable ? this.value : value as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result subtratc(int value),
  }) {
    assert(add != null);
    assert(subtratc != null);
    return subtratc(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result subtratc(int value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtratc != null) {
      return subtratc(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result subtratc(_Subtract value),
  }) {
    assert(add != null);
    assert(subtratc != null);
    return subtratc(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result subtratc(_Subtract value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtratc != null) {
      return subtratc(this);
    }
    return orElse();
  }
}

abstract class _Subtract implements OperationNested {
  const factory _Subtract(int value) = _$_Subtract;

  @override
  int get value;

  @override
  _Subtract copyWith({int value});
}
