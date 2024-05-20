part of 'app_cubit.dart';

class AppState extends Equatable {
  final bool showAppbar;
  final bool darkMode;
  const AppState({this.showAppbar = true, this.darkMode = false});

  factory AppState.initialState() => const AppState();

  @override
  List<Object> get props => [showAppbar, darkMode];

  AppState copyWith({
    bool? showAppbar,
    bool? darkMode,
  }) {
    return AppState(
      showAppbar: showAppbar ?? this.showAppbar,
      darkMode: darkMode ?? this.darkMode,
    );
  }
}
