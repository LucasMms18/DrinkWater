import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png',
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Lucas Mathias da Silva',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 0.7),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              'Mobile Developer',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.black.withAlpha(70),
            endIndent: 35,
            indent: 35,
          ),
          Text(
            "Nível 2",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            color: Colors.white,
            value: 50,
            strokeWidth: 10,
          ),
          ListTile(
            title: Text('Resumo Diário'),
            trailing: Icon(MdiIcons.clipboard),
          ),
          ListTile(
            title: Text('Conquistas'),
            trailing: Icon(MdiIcons.trophy),
          ),
          ListTile(
            title: Text(''),
            trailing: Icon(MdiIcons.clipboard),
          ),
        ],
      ),
    );
  }
}
