import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favourite_apps_event.dart';
part 'favourite_apps_state.dart';

class FavouriteAppsBloc extends Bloc<FavouriteAppsEvent, FavouriteAppsState> {
  FavouriteAppsBloc() : super(FavouriteAppsInitial()) {
    on<FavouriteAppsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
