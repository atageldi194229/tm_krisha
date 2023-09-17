part of 'home_cubit.dart';

enum HomeState {
  home(0),
  favorites(1),
  add(2),
  messages(3),
  profile(4);

  const HomeState(this.tabIndex);
  final int tabIndex;
}
