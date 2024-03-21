import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/GetAllProducts/GetAllProduct.dart';
import '../../Repository/ModelClass/GetAllProductsModel.dart';

part 'get_all_products_event.dart';

part 'get_all_products_state.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvent, GetAllProductsState> {
  late GetAllProductsModel getAllProductsModel;
  GetAllProductsApi getAllProductsApi = GetAllProductsApi();

  GetAllProductsBloc() : super(GetAllProductsInitial()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(GetAllProductsblocLoading());
      try {
        getAllProductsModel = await getAllProductsApi.getGetAllProducts();
        emit(GetAllProductsblocLoaded());
      } catch (e) {
        print(e);
        emit(GetAllProductsblocError());
      }
    });
  }
}
