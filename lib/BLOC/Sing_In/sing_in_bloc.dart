import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/Sing_In/SingIn_Api.dart';
import '../../Repository/ModelClass/SingInModel.dart';

part 'sing_in_event.dart';

part 'sing_in_state.dart';

class SingInBloc extends Bloc<SingInEvent, SingInState> {
  late SingInModel singInModel;
  SingInApi singInApi = SingInApi();

  SingInBloc() : super(SingInInitial()) {
    on<FetchSingInEvent>((event, emit) async {
      emit(SingInblocLoading());
      try {
        singInModel = await singInApi.getSingIn(event.email, event.password);
        emit(SingInblocLoaded());
      } catch (e) {
        print(e);
        emit(SingInblocError());
      }
    });
  }
}
