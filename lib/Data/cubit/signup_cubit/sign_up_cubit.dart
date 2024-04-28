import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/model/Signup_model.dart';
import '../../Reqest/login&signup_request/signup_request.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static SignUpCubit get(context) => BlocProvider.of(context);
  SignupModel signupModel=SignupModel();

  signUpRequest({
    required String name,
    required String email,
    required String password,
  }) {
    SignUpRequest.signUpRequest(name: name,
        email: email,
        password: password,
        onSuccess: (res){
      signupModel=res;
      emit(SignUpDone());
        }, onError: (statusCode){
      emit(SignUpError());
        });


  }
}
