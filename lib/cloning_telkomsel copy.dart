import 'package:flutter/material.dart';

class CloningTelkomsel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'JatApp';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          // color: Colors.grey,
          child: Column(
            children: <Widget>[
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
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
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) => Card(
                            child: Center(child: Text('Dummy Card Text')),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
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
