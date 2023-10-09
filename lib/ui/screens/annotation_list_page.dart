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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
              child: TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: const InputDecoration(
                    hintText: 'Search your annotations..'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: annotations.length,
                  itemBuilder: (context, index) {
                    final item = annotations[index];

                    return Card(
                      margin: const EdgeInsets.only(top: 0.5),
                      elevation: 0.0,
                      surfaceTintColor: null,
                      child: InkWell(
                        onTap: () {
                          // TODO: route to annotation view screen
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1.0, color: Color(0xFFD9D9D9)),
                                bottom: BorderSide(
                                    width: 1.0, color: Color(0xFFD9D9D9))),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SourceTile(name: item.source.name),
                                    Text(
                                      item.annotation.text,
                                    ),
                                  ],
                                ),
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
