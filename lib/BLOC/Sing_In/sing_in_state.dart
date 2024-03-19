part of 'sing_in_bloc.dart';

@immutable
abstract class SingInState {}

class SingInInitial extends SingInState {}


class SingInblocLoading  extends SingInState {}

class SingInblocLoaded  extends SingInState {}

class SingInblocError  extends SingInState {}