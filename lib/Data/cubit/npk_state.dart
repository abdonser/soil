part of 'npk_cubit.dart';

@immutable
sealed class NpkState {}

final class NpkInitial extends NpkState {}
final class NpkLoading extends NpkState {}
final class NpkDone extends NpkState {}
final class NpkError extends NpkState {}
