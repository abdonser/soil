import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:soil/Data/Reqest/npk_request.dart';
import 'package:soil/domain/model/npkModel.dart';

part 'npk_state.dart';

class NpkCubit extends Cubit<NpkState> {
  NpkCubit() : super(NpkInitial());
  static NpkCubit get(context)=>BlocProvider.of(context);
  NpkModel npkModel=NpkModel();
  getNpk({
    required int id
}){
   // emit(NpkLoading());
    NpkRequest.getNpk(id: id, onSuccess: (res){
      npkModel=res;
    },



        onError: (statusCode){
      emit(NpkError());
        });




  }
}
