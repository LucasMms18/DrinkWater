import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beba Água",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text('quantia de agua'),
              FloatingActionButton(
                  child: Icon(Icons.add),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.lerp(
                          BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          10)),
                  splashColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          actionsPadding: EdgeInsets.symmetric(horizontal: 15),
                          contentPadding: EdgeInsets.symmetric(horizontal: 25),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: Text('cancelar')),
                                ElevatedButton(
                                    onPressed: () {}, child: Text('escolha'))
                              ],
                            )
                          ],
                          title: Text(
                            'Escolha a medida:',
                            textAlign: TextAlign.center,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.white,
                          content: Container(
                            height: 150,
                            padding: EdgeInsets.all(1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      MdiIcons.glassMug,
                                      size: 50,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      MdiIcons.cup,
                                      size: 50,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      MdiIcons.beer,
                                      size: 50,
                                    )),
                              ],
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
