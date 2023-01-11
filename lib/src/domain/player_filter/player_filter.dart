import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trainer_promoter/src/domain/core/core.dart';

part 'player_filter.freezed.dart';

@freezed
class PlayerFilter with _$PlayerFilter {
  const PlayerFilter._();
  const factory PlayerFilter({
    required List<BasicUser> userBase,
    @Default("") String searchText,
    @Default(SortBy.email) SortBy sortBy,
    @Default(true) bool ascendente,
  }) = _PlayerFilter;

  factory PlayerFilter.init(Core core) => PlayerFilter(userBase: core.users);

  List<BasicUser> get search {
    List<BasicUser> filteredPlayers = userBase.where((user) {
      return (user.name.toLowerCase().contains(searchText)) ||
          (user.email.toLowerCase().contains(searchText));
    }).toList();

    return sort(filteredPlayers);
  }

  List<BasicUser> sort(List<BasicUser> base) {
    List<BasicUser> players = [...base];

    //sort by trainer and then by name
    players.sort((a, b) {
      if (a.trainer && !b.trainer) {
        return -1;
      } else if (!a.trainer && b.trainer) {
        return 1;
      } else {
        if (sortBy == SortBy.email) {
          return ascendente
              ? a.email.compareTo(b.email)
              : b.email.compareTo(a.email);
        } else {
          return ascendente
              ? a.name.compareTo(b.name)
              : b.name.compareTo(a.name);
        }
      }
    });
    return players;
  }
}

enum SortBy { displayName, email }
