part of 'crop_cubit.dart';

@immutable
sealed class CropState {}

final class CropInitial extends CropState {}
final class CropLoading extends CropState {}
final class CropDone extends CropState {}
final class CropError extends CropState {}
