part of 'sing_up_bloc.dart';

@immutable
abstract class SingUpState {}

class SingUpInitial extends SingUpState {}

class SingUpblocLoading extends SingUpState {}

class SingUpblocLoaded extends SingUpState {}

class SingUpblocError extends SingUpState {}
