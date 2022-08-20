import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: Card(
        child: Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Image.network(
                        'https://myweb-ipautainc.netdna-ssl.com/wp-content/uploads/2018/08/6ix9ine-Ft.-Anuel-AA-Bebe.jpg'),
                    flex: 2,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text("BEBE"),
                          subtitle: Text("6ix9ine"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: const Text("PLAY"),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            TextButton(
                              child: const Text("ADD TO QUEUE"),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex: 8,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
