import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:my_readwise/providers/provider.dart';

class AnnotationListPage extends ConsumerWidget {
  const AnnotationListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: MultiSplitViewTheme(
          data: MultiSplitViewThemeData(
              dividerThickness: 3,
              dividerPainter: DividerPainters.background(
                color: Theme.of(context).colorScheme.surfaceVariant,
                highlightedColor:
                    Theme.of(context).colorScheme.outline.withOpacity(
                          0.5,
                        ),
                animationEnabled: false,
              )),
          child: MultiSplitView(
            children: [
              AnnotationSourceList(),
              AnnotationList(),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
            // children: [
            //   annotations.when(
            //     data: (data) {
            //       return ListView.builder(
            //         shrinkWrap: true,
            //         itemCount: data.length,
            //         itemBuilder: (context, index) {
            //           final item = data[index];

            //         },
            //       );
            //     },
            //     error: (error, stack) => Text(error.toString()),
            //     loading: () => const CircularProgressIndicator(),
            //   ),
            //   TextButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //       child: Text('go back'))
            // ],
            ),
      ),
    );
  }
}

class AnnotationList extends ConsumerWidget {
  const AnnotationList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredAnnotationsProvider);
    final viewModel = ref.watch(annotationListViewModelProvider.notifier);

    // return state.when(
    //     data: (data) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: state.length,
        itemBuilder: (context, index) {
          final item = state[index];

          return ListTile(
            title: Text(item.text),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                viewModel.delete(item);
              },
            ),
          );

          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(item.source.value?.name ?? ''),
                SelectableText(item.text),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          viewModel.delete(item);

                          // ref
                          //     .watch(annotationRepositoryProvider)
                          //     .whenData((value) async {
                          //   final result =
                          //       await value.delete(item.id);
                          //   print(result);
                          // });
                        },
                        icon: const Icon(Icons.delete)),
                  ],
                ),
              ],
            ),
          );
        });
    // },
    // error: (error, stack) => Text(error.toString()),
    // loading: () => CircularProgressIndicator());
  }
}

class AnnotationSourceList extends ConsumerWidget {
  const AnnotationSourceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sourcesProvider);
    final viewModel = ref.watch(annotationListViewModelProvider.notifier);

    return state.when(
        data: (data) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];

                return ListTile(
                  selected: item.id == ref.watch(selectedSourceProvider)?.id,
                  title: Text(item.name),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  selectedTileColor: Theme.of(context).cardColor,
                  onTap: () {
                    ref.read(selectedSourceProvider.notifier).update((state) {
                      return state = (state?.id == item.id) ? null : item;
                    });
                  },
                );

                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(item.source.value?.name ?? ''),
                      SelectableText(item.name),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                // viewModel.delete(item);

                                // ref
                                //     .watch(annotationRepositoryProvider)
                                //     .whenData((value) async {
                                //   final result =
                                //       await value.delete(item.id);
                                //   print(result);
                                // });
                              },
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
        error: (error, stack) => Text(error.toString()),
        loading: () => CircularProgressIndicator());
  }
}
