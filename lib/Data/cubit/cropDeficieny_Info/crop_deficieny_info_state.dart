part of 'crop_deficieny_info_cubit.dart';

@immutable
sealed class CropDeficienyInfoState {}

final class CropDeficienyInfoInitial extends CropDeficienyInfoState {}
final class CropDeficienyInfoLoading extends CropDeficienyInfoState {}
final class CropDeficienyInfoDone extends CropDeficienyInfoState {}
final class CropDeficienyInfoError extends CropDeficienyInfoState {}
