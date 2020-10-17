import 'package:flutter/material.dart';

class CloningTelkomsel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'JatApp';
    var dataCard = [
      // ['Judul'=>'dsd']
      {'nama': 'Paket A', 'harga': 'Rp. 1.000'},
      {'nama': 'Paket B', 'harga': 'Rp. 2.000'},
      {'nama': 'Paket C', 'harga': 'Rp. 3.000'},
      {'nama': 'Paket D', 'harga': 'Rp. 4.000'},
      {'nama': 'Paket E', 'harga': 'Rp. 5.000'},
    ];
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
            backgroundColor: Colors.orange,
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.rounded_corner,
                            size: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "User",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Rp. 8,000",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Active Sampai 20 Oktober 2021",
                                style: TextStyle(fontSize: 8),
                              )
                            ],
                          ),
                          Spacer(),
                          Positioned(
                            child: Icon(
                              Icons.supervised_user_circle,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                            // physics: ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: dataCard.length,
                            itemBuilder: (BuildContext context, int index) => buatCard(
                                  dataCard[index].values.elementAt(0).toString(),
                                  dataCard[index].values.elementAt(1).toString(),
                                )),
                      ),
                      Divider(),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.orange, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10)),
                            child: Text("Tesss", style: TextStyle(color: Colors.orange)),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            color: Colors.orange,
                            child: Text("Tesss", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ]),
                      // ListView(shrinkWrap: true,)
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }

  Card buatCard(String judul, String harga) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
          Text(
            harga,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    ));
  }
}
