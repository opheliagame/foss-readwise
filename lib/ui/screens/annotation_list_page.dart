import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/ui/widgets/source_tile.dart';

class AnnotationListPage extends ConsumerWidget {
  const AnnotationListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final annotations = ref.watch(filteredAnnotationsProvider);
    final viewModel = ref.watch(annotationListViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Foss Readwise')),
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              decoration:
                  const InputDecoration(hintText: 'Search your annotations..'),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: annotations.length,
                  itemBuilder: (context, index) {
                    final item = annotations[index];

                    return Card(
                      elevation: 0.0,
                      surfaceTintColor: null,
                      child: InkWell(
                        onTap: () {
                          // TODO: define tap action
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SourceTile(name: item.source.name),
                                  Text(item.annotation.text),
                                ],
                              ),
                              IconButton(
                                iconSize: 24,
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  viewModel.delete(item.annotation);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
