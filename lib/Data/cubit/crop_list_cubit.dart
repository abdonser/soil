import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:soil/Data/Reqest/cropList_request.dart';
import 'package:soil/domain/model/cropListModel.dart';

part 'crop_list_state.dart';

class CropListCubit extends Cubit<CropListState> {
  CropListCubit() : super(CropListInitial());

  static CropListCubit get(context) => BlocProvider.of(context);
  List<CropList> cropList = [];

  getCropList() {
    emit(CropListLoading());
    CropListRequest.getCropList(onSuccess: (res) {
      cropList = res;
      emit(CropListDone());
    }, onError: (statusCode) {
      emit(CropListError());
    });
  }
}
