import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/entities/player_filter/player_filter.dart';

class PlayerFilterNotifier extends StateNotifier<PlayerFilter> {
  PlayerFilterNotifier(this.ref)
      : super(PlayerFilter.init(ref.watch(coreProvider)));
  final Ref ref;

  void searchText(String search) {
    state = state.copyWith(searchText: search);
  }

  void changeSortBy(SortBy sort) {
    if (sort == state.sortBy) {
      toggleAscendente();
    } else {
      state = state.copyWith(sortBy: sort);
    }
  }

  void toggleAscendente() {
    state = state.copyWith(ascendente: !state.ascendente);
  }
}
