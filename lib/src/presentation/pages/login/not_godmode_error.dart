import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';

class NotGodmodeError extends ConsumerWidget {
  const NotGodmodeError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "You are not a god!",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(8.0), child: Text("Elevating...")),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LoadingAnimationWidget.staggeredDotsWave(
                        color: Theme.of(context).colorScheme.primary, size: 50),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: TextButton(
                      onPressed: () => ref.read(authServiceProvider).logout(),
                      child: Row(
                        children: const [Text("Salir"), Icon(Icons.logout)],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
