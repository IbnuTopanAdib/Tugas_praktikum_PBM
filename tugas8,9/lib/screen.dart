import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loginflora/fetchdata.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  FetchData services = FetchData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: FutureBuilder(
        future: services.fetchDataGithubUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: GlassmorphicContainer(
                width: 400,
                height: 400,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 2,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.1),
                      Color(0xFFFFFFFF).withOpacity(0.05),
                    ],
                    stops: [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://image.tmdb.org/t/p/w500/${snapshot.data?.posterPath}",
                          height: 250,
                          width: double.infinity,
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Judul: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: snapshot.data!.originalTitle),
                          ],
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Bahasa: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: snapshot.data!.originalLanguage),
                          ],
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Deskripsi: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: snapshot.data!.overview),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
