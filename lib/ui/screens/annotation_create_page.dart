import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/providers/provider.dart';

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

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(annotationCreateViewModelProvider);
    final source = ref.watch(sourcesProvider);
    final viewModel = ref.watch(annotationCreateViewModelProvider.notifier);

    textEditingController.addListener(() {
      viewModel.setText(textEditingController.text);
    });
    sourceNameTextEditingController.addListener(() {
      viewModel.setSourceName(sourceNameTextEditingController.text);
    });

    return source.when(
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text(error.toString()),
      data: (sourcesData) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: textEditingController,
                        // maxLines: null,
                        // expands: true,
                        minLines: 10,
                        maxLines: 100,
                        decoration: const InputDecoration(
                            hintText: 'Annotation text body'),
                      ),

                      DropdownMenu(
                        controller: sourceNameTextEditingController,
                        enableSearch: true,
                        dropdownMenuEntries: List.generate(
                          sourcesData.length,
                          (index) {
                            final item = sourcesData[index];

                            return DropdownMenuEntry(
                                value: item, label: item.name);
                          },
                        ),
                        onSelected: (value) {
                          if (value == null) return;
                          viewModel.setSourceId(value);
                        },
                      ),
                      // FutureBuilder(
                      //     future: ref
                      //         .read(dbInstanceProvider)
                      //         .collection('sources')
                      //         .get(),
                      //     builder: (context, snapshot) {
                      //       if (snapshot.hasData) {
                      //         final docs = snapshot.data!.docs;
                      //         final entries = List.generate(docs.length, (index) {
                      //           final value = docs[index].reference.id;
                      //           final label = docs[index]['name'];

                      //           return DropdownMenuEntry(
                      //               value: value, label: label);
                      //         });

                      //         return DropdownMenu(dropdownMenuEntries: entries);
                      //       } else if (snapshot.hasError) {
                      //         return const Text('error occured.');
                      //       } else {
                      //         return const CircularProgressIndicator();
                      //       }
                      //     }),
                      // DropdownMenu<AnnotationSource>(
                      //   // expandedInsets: EdgeInsets.zero,
                      //   controller: sourceNameTextEditingController,
                      //   enableFilter: true,

                      //   label: const Text('Source'),
                      //   dropdownMenuEntries:
                      //       ref.watch(annotationSourcesProvider).when(
                      //           data: (data) {
                      //             return List.generate(data.length, (index) {
                      //               final item = data[index];
                      //               return DropdownMenuEntry<AnnotationSource>(
                      //                   value: item, label: item.name);
                      //             });
                      //           },
                      //           error: (error, stack) => [
                      //                 DropdownMenuEntry(
                      //                     value: AnnotationSource(),
                      //                     label:
                      //                         'djsmsnsmnmnamnmsnaskaskjkajhksdkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk')
                      //               ],
                      //           loading: () => [
                      //                 DropdownMenuEntry(
                      //                     value: AnnotationSource(),
                      //                     label:
                      //                         'djsmsnsmnmnamnmsnaskaskjkajhksdkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk')
                      //               ]),
                      //   onSelected: (AnnotationSource? source) {
                      //     setState(() {
                      //       sourceUrlTextEditingController.text = source?.url ?? '';
                      //       selectedAnnotationSource = source;
                      //     });
                      //   },
                      // ),
                      // TextFormField(
                      //   enabled: selectedAnnotationSource == null ? true : false,
                      //   controller: sourceUrlTextEditingController,
                      //   decoration: const InputDecoration(hintText: 'Source url'),
                      // ),
                      TextButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              viewModel.save();
                            }
                          },
                          child: const Text('submit'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
