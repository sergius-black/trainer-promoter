import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/core/core.dart';
import 'package:trainer_promoter/src/domain/player_filter/player_filter.dart';
import 'package:trainer_promoter/src/presentation/pages/home/widgets/players_search_bar.dart';
import 'package:trainer_promoter/src/presentation/pages/home/widgets/userTile.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final Core core = ref.watch(coreProvider);
    final PlayerFilter filter = ref.watch(playerFilterProvider);

    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Trainer Promoter"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(authServiceProvider).logout();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(Duration(milliseconds: 100))
                .then((value) => ref.refresh(coreProvider));
          },
          child: Column(
            children: [
              const PlayerSearchBar(),
              Expanded(
                  child: filter.search.isEmpty
                      ? const Center(
                          child: Text("No users found"),
                        )
                      : _buildList(filter.search)),
            ],
          )),
    ));
  }

  _buildList(List<BasicUser> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserTile(user: users[index]);
      },
    );
  }
}
