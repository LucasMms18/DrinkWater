import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  final IconData? icon;
  const CustomListTile({Key? key, this.icon, this.label, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$label',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 13, color: Colors.black)),
      trailing: Icon(icon, color: Colors.blueAccent.withAlpha(150)),
      onTap: onTap,
    );
  }
}
