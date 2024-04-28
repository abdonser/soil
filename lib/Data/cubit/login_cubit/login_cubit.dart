import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';



import '../../../domain/model/Loginmodel.dart';
import '../../Reqest/login&signup_request/login_request.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  Loginmodel loginmodel = Loginmodel();

  loginRequest({required String email, required String password}) {
    LoginRequest.loginRequest(
        email: email,
        password: password,
        onSuccess: (res) {
          loginmodel = res;
          emit(LoginDone());
        },
        onError: (statusCode) {
          emit(LoginError());
        });
  }
}
