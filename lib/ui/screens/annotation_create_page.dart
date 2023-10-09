import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';
import 'package:my_readwise/ui/widgets/search_text_form_field.dart';

class AnnotationCreatePage extends ConsumerStatefulWidget {
  const AnnotationCreatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnnotationCreatePageState();
}

class _AnnotationCreatePageState extends ConsumerState<AnnotationCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final textEditingController = TextEditingController();
  final sourceNameTextEditingController = TextEditingController();
  final sourceUrlTextEditingController = TextEditingController();
  bool isShowSourceUrlTextField = false;

  @override
  Widget build(BuildContext context) {
    final filteredSources = ref.watch(filteredSourcesProvider);
    final viewModel = ref.watch(annotationCreateViewModelProvider.notifier);

    textEditingController.addListener(() {
      viewModel.setText(textEditingController.text.trim());
    });
    sourceNameTextEditingController.addListener(() {
      viewModel.setSourceName(sourceNameTextEditingController.text.trim());
      ref.watch(filterSourceNameProvider.notifier).update(
          (state) => state = sourceNameTextEditingController.text.trim());
    });
    sourceUrlTextEditingController.addListener(() {
      viewModel.setSourceUrl(sourceUrlTextEditingController.text.trim());
    });

    // return source.when(
    //   loading: () => const CircularProgressIndicator(),
    //   error: (error, stack) => Text(error.toString()),
    //   data: (sourcesData) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // TODO check if dropdownmenu works better for current usecase
                      // DropdownMenu(
                      //   controller: sourceNameTextEditingController,
                      //   enableSearch: true,
                      //   enableFilter: true,
                      //   // width: double.infinity,
                      //   // expandedInsets: true,
                      //   menuHeight: 200,
                      //   dropdownMenuEntries: [
                      //     ...List.generate(
                      //       sourcesData.length,
                      //       (index) {
                      //         final item = sourcesData[index];

                      //         return DropdownMenuEntry(
                      //             value: item, label: item.name);
                      //       },
                      //     ),
                      //     const DropdownMenuEntry(
                      //         value: null, label: 'Create new source'),
                      //   ],
                      //   onSelected: (value) {
                      //     if (value == null) return;
                      //     viewModel.setSourceId(value);
                      //   },
                      // ),
                      if (!isShowSourceUrlTextField)
                        SearchTextFormField<AnnotationSourceState>(
                          controller: sourceNameTextEditingController,
                          onChangedItems: (String? query) {
                            return Future.value([
                              ...filteredSources,
                              const AnnotationSourceState(
                                  id: null, name: 'Create new source', url: ''),
                            ]);
                          },
                          onSelected: (AnnotationSourceState? selectedItem) {
                            if (selectedItem == null) return;

                            if (selectedItem.id == null) {
                              setState(() {
                                isShowSourceUrlTextField = true;
                              });
                              return;
                            }

                            sourceNameTextEditingController.text =
                                selectedItem.name;
                            viewModel.setSourceId(selectedItem);
                          },
                          label: 'source',
                        ),

                      const SizedBox(height: 24.0),
                      if (isShowSourceUrlTextField)
                        Column(
                          children: [
                            TextFormField(
                              controller: sourceNameTextEditingController,
                              decoration: const InputDecoration(
                                hintText: 'Enter new source name',
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            TextFormField(
                              controller: sourceUrlTextEditingController,
                              decoration: const InputDecoration(
                                hintText: 'Enter a valid url',
                              ),
                            ),
                            const SizedBox(height: 24.0),
                          ],
                        ),

                      TextFormField(
                        controller: textEditingController,
                        minLines: 10,
                        maxLines: 100,
                        decoration: const InputDecoration(
                            hintText: 'Annotation text body'),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    viewModel.save();
                  }
                },
                child: const Text('submit'),
              )
            ],
          ),
        ),
      ),
    );
    //   },
    // );
  }
}
