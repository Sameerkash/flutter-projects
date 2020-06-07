part of 'auth_bloc.dart';


@freezed 
abstract class AuthEvent with _$AuthEvent{
  const factory AuthEvent.authChechrequested() = AuthCheckRequested;
    const factory AuthEvent.signedOut() = SignOut;
 
}
