part of 'sing_in_bloc.dart';

@immutable
abstract class SingInEvent {}
class FetchSingInEvent extends SingInEvent {
  final String email;
  final String password;

  FetchSingInEvent(
      {required this.email, required this.password});
}