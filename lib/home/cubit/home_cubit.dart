import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.home);

  void setTab(int selectedTab) {
    switch (selectedTab) {
      case 0:
        return emit(HomeState.home);
      case 1:
        return emit(HomeState.favorites);
      case 2:
        return emit(HomeState.add);
      case 3:
        return emit(HomeState.messages);
      case 4:
        return emit(HomeState.profile);
    }
  }
}
