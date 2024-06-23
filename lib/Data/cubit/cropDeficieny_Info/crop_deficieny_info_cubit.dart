import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:soil/Data/Reqest/cropDeficiency_info_request.dart';

import 'package:soil/domain/model/Npkdeficiency.dart';

part 'crop_deficieny_info_state.dart';

class CropDeficienyInfoCubit extends Cubit<CropDeficienyInfoState> {
  CropDeficienyInfoCubit() : super(CropDeficienyInfoInitial());

  static CropDeficienyInfoCubit get(context) => BlocProvider.of(context);

  //create object from model
  Npkdeficiency npkdeficiency = Npkdeficiency();

  getCropInfo({required int id}) {
    CropDeficiencyInfoRequest.getCropInfo(
        id: id,
        onSuccess: (res) {
          //Model=res
          npkdeficiency = res;
          emit(CropDeficienyInfoDone());
        },
        onError: (statusCode) {
          emit(CropDeficienyInfoError());
        });
  }
}
