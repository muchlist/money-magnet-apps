import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBar extends ConsumerStatefulWidget {
  final Widget body;
  final String title;
  final String hint;
  final void Function(String searchTerm) onShouldNavigateToResultPage;
  final void Function() onSignOutButtonPress;

  const SearchBar({
    Key? key,
    required this.body,
    required this.title,
    required this.hint,
    required this.onShouldNavigateToResultPage,
    required this.onSignOutButtonPress,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  late FloatingSearchBarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FloatingSearchBarController();
    // ref.read(searchHistoryNotifierProvider.notifier).watchSearchTerms();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // void pushPageAndPutFirstInHistory(String searchTerm) {
    //   widget.onShouldNavigateToResultPage(searchTerm);
    //   ref
    //       .read(searchHistoryNotifierProvider.notifier)
    //       .putSearchTermFirst(searchTerm);
    //   _controller.close();
    // }

    // void pushPageAndAddToHistory(String searchTerm) {
    //   widget.onShouldNavigateToResultPage(searchTerm);
    // }

    return FloatingSearchBar(
      controller: _controller,
      body: FloatingSearchBarScrollNotifier(child: widget.body),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.title, style: Theme.of(context).textTheme.titleLarge),
          Text('Tap to search 👆', style: Theme.of(context).textTheme.bodySmall)
        ],
      ),
      hint: widget.hint,
      automaticallyImplyBackButton: false,
      leadingActions: [
        if ((AutoRouter.of(context).canPop()) &&
            (Platform.isIOS || Platform.isMacOS))
          IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              splashRadius: 18,
              onPressed: () {
                AutoRouter.of(context).pop();
              })
        else if (AutoRouter.of(context).canPop())
          IconButton(
              icon: const Icon(Icons.arrow_back),
              splashRadius: 18,
              onPressed: () {
                AutoRouter.of(context).pop();
              })
      ],
      actions: [
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
        FloatingSearchBarAction(
          child: IconButton(
            icon: const Icon(MdiIcons.logoutVariant),
            onPressed: () {
              widget.onSignOutButtonPress();
            },
            splashRadius: 18,
          ),
        ),
      ],
      onQueryChanged: (query) {
        // ref
        //     .read(searchHistoryNotifierProvider.notifier)
        //     .watchSearchTerms(filter: query);
      },
      onSubmitted: (query) {
        // pushPageAndAddToHistory(query);
        // widget.onShouldNavigateToResultPage(query);
        // ref.read(searchHistoryNotifierProvider.notifier).addSearchTerm(query);
        // _controller.close();
      },
      //* builder di FloatingSearchBar adalah item2 yang muncul pada hasil pencarian
      builder: (context, transition) {
        return Material(
          color: Theme.of(context).cardColor,
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          clipBehavior: Clip.hardEdge,
          child: Consumer(
            builder: ((context, ref, child) {
              return const Text("Under Construction");
              // final searchHistoryState =
              //     ref.watch(searchHistoryNotifierProvider);
              // return searchHistoryState.map(
              //   data: (history) {
              //     if (_controller.query.isEmpty && history.value.isEmpty) {
              //       return Container(
              //         height: 56,
              //         alignment: Alignment.center,
              //         child: Text(
              //           "start searching",
              //           style: Theme.of(context).textTheme.caption,
              //         ),
              //       );
              //     } else if (history.value.isEmpty) {
              //       return ListTile(
              //         leading: const Icon(Icons.search),
              //         title: Text(_controller.query),
              //         onTap: () {
              //           pushPageAndAddToHistory(_controller.query);
              //         },
              //       );
              //     }
              //     return Column(
              //       children: history.value
              //           .map(
              //             (term) => ListTile(
              //               leading: const Icon(Icons.history),
              //               title: Text(
              //                 term,
              //                 maxLines: 1,
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //               trailing: IconButton(
              //                 icon: const Icon(Icons.clear),
              //                 onPressed: () {
              //                   ref
              //                       .read(
              //                           searchHistoryNotifierProvider.notifier)
              //                       .deleteSearchTerm(term);
              //                 },
              //               ),
              //               onTap: () {
              //                 pushPageAndPutFirstInHistory(term);
              //               },
              //             ),
              //           )
              //           .toList(),
              //     );
              //   },
              //   loading: (_) => const ListTile(
              //     title: LinearProgressIndicator(),
              //   ),
              //   error: (s) => ListTile(
              //     title: Text('unexpected error : ${s.error}'),
              //   ),
              // );
            }),
          ),
        );
      },
    );
  }
}
