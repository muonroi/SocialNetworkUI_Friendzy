import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/home/home_search_partners_screen/models/search_partners_model.dart';
part 'search_partners_state.dart';

final homeSearchPartnersNotifier =
    StateNotifierProvider<HomeSearchPartnersNotifier, HomeSearchPartnersState>(
  (ref) => HomeSearchPartnersNotifier(HomeSearchPartnersState(
    homeSearchPartnersModelObj: const HomeSearchPartnersModel(
      id: 0,
      name: 'Alfredo Calzoni',
      address: 'HAMBURG, GERMANY',
      age: 20,
      images: [
        'https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      ],
      distance: 2.6,
      percentMatch: 75,
    ),
  )),
);

class HomeSearchPartnersNotifier
    extends StateNotifier<HomeSearchPartnersState> {
  HomeSearchPartnersNotifier(HomeSearchPartnersState state) : super(state);
}
