import 'package:flutter/material.dart';

class SearchTextFormField<T> extends StatefulWidget {
  const SearchTextFormField({
    super.key,
    this.decoration,
    this.textStyle,
    required this.controller,
    required this.onChangedItems,
    required this.onSelected,
    required this.label,
  });

  final InputDecoration? decoration;
  final String label;
  final TextStyle? textStyle;
  final Future<List<T>> Function(String?) onChangedItems;
  // TODO change to void callback check DropdownMenuItem implementation
  final void Function(T?) onSelected;
  final TextEditingController controller;

  @override
  State<SearchTextFormField<T>> createState() => _SearchTextFormFieldState<T>();
}

class _SearchTextFormFieldState<T> extends State<SearchTextFormField<T>> {
  final LayerLink _layerLink = LayerLink();
  late OverlayEntry _currentOverlayEntry;
  List<OverlayEntry> _overlayEntries = [];

  final FocusNode _textFormFieldFocusNode = FocusNode();

  bool _isCursorOverOverlayEntry = false;
  Future<List<T>> overlayListItems = Future(() => []);

  @override
  void initState() {
    super.initState();

    _textFormFieldFocusNode.addListener(() {
      if (_textFormFieldFocusNode.hasFocus) {
        _currentOverlayEntry = _createOverlayEntry();
        _removeOverlayEntries();
        _overlayEntries.add(_currentOverlayEntry);

        Overlay.of(context).insert(_overlayEntries.first);
      } else {
        // remove overlay entries if cursor not above overlay list
        if (!_isCursorOverOverlayEntry) {
          _removeOverlayEntries();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextFormField(
        controller: widget.controller,
        focusNode: _textFormFieldFocusNode,
        decoration:
            widget.decoration ?? InputDecoration(labelText: widget.label),
        style: widget.textStyle,
        onChanged: (value) {
          _currentOverlayEntry.markNeedsBuild();
          setState(() {
            overlayListItems = widget.onChangedItems(value);
          });
        },
      ),
    );
  }

  Widget _loadingIndicator() {
    return SizedBox(
      width: 50,
      height: 50,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }

  Widget _listViewContainer(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    return FutureBuilder<List<T>>(
      future: overlayListItems,
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: screenWidth,
              maxWidth: screenWidth,
              minHeight: 0,
              maxHeight: snapshot.data!.length * 55,
            ),
            child: ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                T? item = snapshot.data?[index];

                return ListTile(
                  title: Text(item.toString()),
                  onTap: () {
                    widget.onSelected(item);

                    _removeOverlayEntries();
                  },
                );
              },
            ),
          );
        }

        /// handles others as you did on question
        else {
          return _loadingIndicator();
        }
      },
    );
  }

  void _removeOverlayEntries() {
    for (final entry in _overlayEntries) {
      entry.remove();
    }
    _overlayEntries = [];
  }

  OverlayEntry _createOverlayEntry() {
    setState(() {
      _isCursorOverOverlayEntry = false;
    });
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Size overlaySize = renderBox.size;

    return OverlayEntry(
        builder: (context) => Positioned(
              width: overlaySize.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, overlaySize.height + 5.0),
                child: Material(
                  elevation: 4.0,
                  child: MouseRegion(
                      onHover: (event) {
                        setState(() {
                          _isCursorOverOverlayEntry = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          _isCursorOverOverlayEntry = false;
                        });
                      },
                      onEnter: (event) {
                        setState(() {
                          _isCursorOverOverlayEntry = false;
                        });
                      },
                      child: _listViewContainer(context)),
                ),
              ),
            ));
  }
}
