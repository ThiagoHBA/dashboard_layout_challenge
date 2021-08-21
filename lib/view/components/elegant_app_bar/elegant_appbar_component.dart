import 'package:flutter/material.dart';

import 'package:layout_challenge/view/components/account_preview/account_preview_component.dart';

class ElegantAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback? menuOnTap;
  final bool small;
  final bool mobile;

  const ElegantAppBar({
    Key? key,
    this.menuOnTap,
    this.small = false,
    this.mobile = false,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  _ElegantAppBarState createState() => _ElegantAppBarState();
}

class _ElegantAppBarState extends State<ElegantAppBar> {
  bool _activateSearchBar = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: widget.menuOnTap,
          ),
        ],
      ),
      title: _activateSearchBar
          ? const SearchTextField(
              prefixIcon: false,
            )
          : Text(
              "Dashboard",
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline5,
            ),
      actions: [
        SizedBox(
          width: widget.mobile ? 150 : 550,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (widget.mobile)
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => setState(
                    () => _activateSearchBar = !_activateSearchBar,
                  ),
                )
              else
                const SearchTextField(),
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              if (!widget.mobile) const AccountPreview(),
            ],
          ),
        ),
      ],
    );
  }
}

class SearchTextField extends StatelessWidget {
  final bool prefixIcon;
  const SearchTextField({
    Key? key,
    this.prefixIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
        border: Border.all(
          width: 0.5,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: prefixIcon
              ? Icon(
                  Icons.search,
                  color: Theme.of(context).appBarTheme.iconTheme?.color,
                )
              : const SizedBox(),
          alignLabelWithHint: true,
          hintText: 'Search...',
          contentPadding: const EdgeInsets.symmetric(vertical: 18),
          hintStyle: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
