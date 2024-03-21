part of 'get_all_products_bloc.dart';

@immutable
abstract class GetAllProductsState {}

class GetAllProductsInitial extends GetAllProductsState {}

class GetAllProductsblocLoading extends GetAllProductsState {}

class GetAllProductsblocLoaded extends GetAllProductsState {}

class GetAllProductsblocError extends GetAllProductsState {}
