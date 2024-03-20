import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/SingUp/SingUp_Api.dart';
import '../../Repository/ModelClass/SingUpModel.dart';

part 'sing_up_event.dart';
part 'sing_up_state.dart';

class SingUpBloc extends Bloc<SingUpEvent, SingUpState> {
  late SingUpModel singUpModel;
  SingUpApi singUpApi = SingUpApi();

  SingUpBloc() : super(SingUpInitial()) {
    on<FetchSingUpEvent>((event, emit) async {
      emit(SingUpblocLoading());
      try {
        singUpModel = await singUpApi.getSingUp(event.username,event.email, event.password,event.phone);
        emit(SingUpblocLoaded());
      } catch (e) {
        print(e);
        emit(SingUpblocError());
      }
    });
  }
}
