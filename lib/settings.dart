import 'package:drink_water/custom_list_tile.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Configurações das notifcações'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[600])),
              CustomListTile(
                label: 'Agende suas Notificações',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              CustomListTile(
                label: 'Som das Notificações',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              Text('Geral'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[600])),
              CustomListTile(
                label: 'Unidade de Medida',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              CustomListTile(
                label: 'Meta de Ingestão',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              CustomListTile(
                label: 'Conectar com App saúde',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              Text(
                'Dados Pessoais'.toUpperCase(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[600]),
              ),
              CustomListTile(
                label: 'Sexo',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              CustomListTile(
                label: 'Peso',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              CustomListTile(
                label: 'Hora de acordar',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
              CustomListTile(
                label: 'Hora de dormir',
                icon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
