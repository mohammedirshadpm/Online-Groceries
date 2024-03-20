part of 'sing_up_bloc.dart';

@immutable
abstract class SingUpEvent {}
class FetchSingUpEvent extends SingUpEvent {
  final String email;
  final String password;
  final String username;
  final String phone;

  FetchSingUpEvent(
      {required this.email, required this.password, required this.username,required this.phone});
}