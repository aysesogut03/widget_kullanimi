import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mutlu.png";
  bool switchKontrol=false;
  bool checkboxKontrol=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("widgets")),
      body: Center(
        child: Column(
          children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfController,
                decoration: const InputDecoration(hintText: "veri"),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  alinanVeri = tfController.text;
                });
              },
              child: const Text("veriyi al"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = "mutlu.png"; // Resim 1'e basınca mutlu yüz gelsin
                    });
                  },
                  child: const Text("Resim 1"),
                ),
                Image.asset("resimler/$resimAdi"),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = "uzgun.png"; // Resim 2'ye basınca üzgün yüz gelsin
                    });
                  },
                  child: const Text("Resim 2"),
                ),
              ],
            ),

            SizedBox(width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SwitchListTile
                    ( title: const Text("Dart"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value:switchKontrol,
                      onChanged: (veri)
                  {
                    setState(() {
                      switchKontrol=veri;
                    });
                  })
                ],
              ),
            ),

            SizedBox(width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  CheckboxListTile
                    ( title: const Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value:checkboxKontrol,
                      onChanged: (veri)
                      {
                        setState(() {
                          switchKontrol=veri!;
                        });
                      })
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

