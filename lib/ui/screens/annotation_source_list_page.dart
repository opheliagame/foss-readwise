// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_readwise/providers/provider.dart';

// class AnnotationSourceListPage extends ConsumerWidget {
//   const AnnotationSourceListPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final annotationSources = ref.watch(annotationSourcesProvider);

//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             annotationSources.when(
//               data: (data) {
//                 return ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: data.length,
//                   itemBuilder: (context, index) {
//                     final item = data[index];
//                     return Card(
//                       child: Row(
//                         children: [
//                           Text(item.name),
//                           Text(item.url),
//                           IconButton(
//                               onPressed: () {
//                                 ref
//                                     .watch(annotationSourceRepositoryProvider)
//                                     .whenData((value) async {
//                                   final result = await value.delete(item.id);
//                                   print(result);
//                                 });
//                               },
//                               icon: const Icon(Icons.delete)),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               },
//               error: (error, stack) => Text(error.toString()),
//               loading: () => const CircularProgressIndicator(),
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('go back'))
//           ],
//         ),
//       ),
//     );
//   }
// }
