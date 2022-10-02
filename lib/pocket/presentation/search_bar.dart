import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(CupertinoIcons.search),
              onPressed: () {
                // provider.setSearchDetail(
                //     search: _nameController.text);
                // FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
            Expanded(
              child: TextFormField(
                controller: _nameController,
                textInputAction: TextInputAction.done,
                minLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kGreyColor,
                  enabledBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {
                      // provider.resetSearchDetail();
                      _nameController.clear();
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  border: InputBorder.none,
                ),
                onFieldSubmitted: (String text) => () {
                  FocusScope.of(context).requestFocus(
                    FocusNode(),
                  );
                },
              ),
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ),
      ),
    );
  }
}
