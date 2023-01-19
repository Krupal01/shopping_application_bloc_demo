import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/widgets/header_text.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? textIconColor;
  final String? icon;
  final String? title;
  final double? height;
  final List<Widget>? menuItem;
  final bool hideBack;
  final Widget? leading;

  const MainAppBar({
    super.key,
    this.backgroundColor = Colors.white,
    this.textIconColor = Colors.black,
    this.icon,
    this.title = '',
    this.menuItem,
    this.height= kToolbarHeight,
    this.hideBack = false,
    this.leading,
    });

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: menuItem,
      toolbarHeight: preferredSize.height,
      iconTheme: IconThemeData(color: textIconColor),
      title: HeaderText(text: title.toString()),
      backgroundColor: backgroundColor,
      centerTitle: true,
      leading: leading,
    );
  }
}
