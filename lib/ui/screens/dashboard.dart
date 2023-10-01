import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/providers/ui_providers.dart';
import 'package:my_readwise/ui/screens/annotation_create_page.dart';
import 'package:my_readwise/ui/screens/annotation_list_page.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navRailIndex = ref.watch(navRailIndexStateProvider);

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: navRailIndex,
              groupAlignment: -1.0,
              onDestinationSelected: (int index) {
                ref
                    .read(navRailIndexStateProvider.notifier)
                    .update((state) => index);
              },
              labelType: NavigationRailLabelType.all,
              // leading: showLeading
              //     ? FloatingActionButton(
              //         elevation: 0,
              //         onPressed: () {
              //           // Add your onPressed code here!
              //         },
              //         child: const Icon(Icons.add),
              //       )
              //     : const SizedBox(),
              // trailing: showTrailing
              //     ? IconButton(
              //         onPressed: () {
              //           // Add your onPressed code here!
              //         },
              //         icon: const Icon(Icons.more_horiz_rounded),
              //       )
              //     : const SizedBox(),
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.create),
                  selectedIcon: Icon(Icons.create),
                  label: Text('Create'),
                ),
                // NavigationRailDestination(
                //   icon: Icon(Icons.source),
                //   selectedIcon: Icon(Icons.source),
                //   label: Text('sources'),
                // ),
              ],
            ),
            VerticalDivider(
              thickness: 1,
              width: 1,
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
            Expanded(
              child: IndexedStack(
                alignment: AlignmentDirectional.topCenter,
                index: navRailIndex,
                children: const [
                  AnnotationListPage(),
                  AnnotationCreatePage(),
                  // AnnotationSourceListPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
