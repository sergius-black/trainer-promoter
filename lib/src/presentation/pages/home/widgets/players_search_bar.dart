import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/entities/player_filter/player_filter.dart';

class PlayerSearchBar extends ConsumerStatefulWidget {
  const PlayerSearchBar({Key? key}) : super(key: key);

  @override
  ConsumerState<PlayerSearchBar> createState() => _PlayerSearchBarState();
}

class _PlayerSearchBarState extends ConsumerState<PlayerSearchBar> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController()
      ..addListener(() {
        ref.read(playerFilterProvider.notifier).searchText(controller.text);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PlayerFilter playerFilter = ref.watch(playerFilterProvider);

    return Row(
      children: [
        buildDropdownButton(playerFilter.sortBy, playerFilter.ascendente),
        Expanded(
            child: TextField(
          controller: controller,
        )),
        IconButton(
          onPressed: controller.clear,
          icon: controller.text.isNotEmpty
              ? Icon(Icons.cancel)
              : Icon(Icons.search),
        )
      ],
    );
  }

  FaIcon sortButtonIcon(SortBy sortBy, bool ascendente) {
    if (ascendente) {
      if (sortBy == SortBy.displayName) {
        return FaIcon(FontAwesomeIcons.arrowDownAZ);
      } else {
        return FaIcon(FontAwesomeIcons.arrowDownWideShort);
      }
    } else {
      if (sortBy == SortBy.displayName) {
        return FaIcon(FontAwesomeIcons.arrowDownZA);
      } else {
        return FaIcon(FontAwesomeIcons.arrowUpWideShort);
      }
    }
  }

  PopupMenuButton buildDropdownButton(SortBy sortBy, bool ascendente) {
    return PopupMenuButton<SortBy>(
      icon: sortButtonIcon(sortBy, ascendente),
      onSelected: (sortBy) =>
          ref.read(playerFilterProvider.notifier).changeSortBy(sortBy),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SortBy>>[
        const PopupMenuItem<SortBy>(
          enabled: false,
          child: Text(
            'Ordenar por:',
            style: TextStyle(color: white),
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<SortBy>(
          value: SortBy.displayName,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nombre',
                style: TextStyle(
                    fontWeight: sortBy == SortBy.displayName
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
              if (sortBy == SortBy.displayName)
                FaIcon(
                  ascendente
                      ? FontAwesomeIcons.arrowDownZA
                      : FontAwesomeIcons.arrowDownAZ,
                ),
            ],
          ),
        ),
        PopupMenuItem<SortBy>(
          value: SortBy.email,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Email',
                style: TextStyle(
                    fontWeight: sortBy == SortBy.email
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
              if (sortBy == SortBy.email)
                FaIcon(
                  ascendente
                      ? FontAwesomeIcons.arrowDownZA
                      : FontAwesomeIcons.arrowDownAZ,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
