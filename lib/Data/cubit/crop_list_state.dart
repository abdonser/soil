part of 'crop_list_cubit.dart';

@immutable
sealed class CropListState {}

final class CropListInitial extends CropListState {}
final class CropListLoading extends CropListState {}
final class CropListDone extends CropListState {}
final class CropListError extends CropListState {}
