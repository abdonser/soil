import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:soil/Data/Reqest/CropDeficiency_Request.dart';

import '../../../domain/model/CropDeficiency.dart';

part 'crop_state.dart';

class CropCubit extends Cubit<CropState> {
  CropCubit() : super(CropInitial());
  static CropCubit get(context)=>BlocProvider.of(context);
  List<Npkdeficiency>cropList=[];
getCrop(){
  emit(CropLoading());
  CropDeficiencyRequest.getCropList(onSuccess: (res){
    cropList=res;
        emit(CropDone());

  },
      onError: (statusCode){
    emit(CropError());
      });
}
}
