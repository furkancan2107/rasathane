import 'package:flutter/material.dart';
import 'package:rasathane_deprem/models/user_models.dart';
import 'package:rasathane_deprem/service.dart/user_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserService service = UserService();
  List<DepremResult?> data = [];

  @override
  void initState() {
    service.get().then((value) {
      if (value != null && value.result != null) {
        setState(() {
          data = value.result!;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: data.length,
        itemBuilder: (context, index) {
          var veri = data[index]!;

          return Card(
            child: SingleChildScrollView(
              child: ListTile(
                focusColor: Colors.orange,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FadeInImage(
                      image: NetworkImage(
                          "https://media.tenor.com/KoCEV-cKZ1kAAAAd/t%C3%BCrkiye.gif"),
                      placeholder: AssetImage("assets/1.gif"),
                      imageErrorBuilder: (context, error, stackTrace) {
                        return CircularProgressIndicator();
                      },
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "YER: ${veri.title.toString()}",
                    ),
                    Text(
                      "TARİH/SAAT: ${veri.date.toString()}                                  ",
                    ),
                    Text(
                      "DERİNLİK:${veri.depth.toString()}                                      ",
                    ),
                    Text(
                      "BÜYÜKLÜK:${veri.mag.toString()}                                        ",
                    ),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "${veri.lokasyon.toString()}        ",
                    ),
                    Text(
                      "KORDİNAT: ${veri.coordinates.toString()}                                ",
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
