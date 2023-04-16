import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/entities/core/core.dart';

class UserTile extends ConsumerStatefulWidget {
  final BasicUser user;
  const UserTile({super.key, required this.user});

  @override
  ConsumerState<UserTile> createState() => _UserTileState();
}

class _UserTileState extends ConsumerState<UserTile> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          !widget.user.trainer
              ? SlidableAction(
                  onPressed: (_) {
                    setState(() {
                      loading = true;
                    });
                    ref
                        .read(authServiceProvider)
                        .promote(widget.user.uid)
                        .then((value) => ref.refresh(coreProvider));
                  },
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  foregroundColor:
                      Theme.of(context).colorScheme.onSurfaceVariant,
                  icon: FontAwesomeIcons.check,
                  label: 'Promote',
                )
              : SlidableAction(
                  onPressed: (_) {
                    setState(() {
                      loading = true;
                    });
                    ref
                        .read(authServiceProvider)
                        .demote(widget.user.uid)
                        .then((value) => ref.refresh(coreProvider));
                  },
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  foregroundColor:
                      Theme.of(context).colorScheme.onSurfaceVariant,
                  icon: FontAwesomeIcons.xmark,
                  label: 'Demote',
                ),
        ],
      ),
      child: loading
          ? ListTile(
              title: LoadingAnimationWidget.staggeredDotsWave(
                  color: Theme.of(context).colorScheme.primary, size: 40),
            )
          : ListTile(
              selected: widget.user.trainer,
              title: Text(widget.user.name),
              subtitle: Text(widget.user.email),
            ),
    );
  }
}
