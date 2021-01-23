import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  String cari="";
  TextEditingController controlTeks = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: new EdgeInsets.all(10),
        child: new ListView(children: <Widget>[
          new TextField(
            controller: controlTeks,
            decoration: new InputDecoration(
              hintText: "Search Plant Shop Nearby.."
            ),
            onSubmitted: (String str){
              setState(() {
                controlTeks.text="";
              });
            },
          ),
          new CardToko(gambar: "img/shop/1.JPG", nama: "Flourish Shop", rating: "4,5", alamat: "Jl. Manuruki, No 12"),
          new CardToko(gambar: "img/shop/2.jpg", nama: "Merbabu Botani", rating: "5", alamat: "Jl. Tabaria, Blok A No 12"),
          new CardToko(gambar: "img/shop/3.jpg", nama: "Root Shop", rating: "4,2", alamat: "Jl. Kukur, No 2"),
          new CardToko(gambar: "img/shop/4.jpg", nama: "Kalimanjaro", rating: "4,4", alamat: "Kompleks Pasar Tani, Blok C"),
          new CardToko(gambar: "img/shop/5.jpg", nama: "Lily Shop", rating: "4,8", alamat: "Jl. Banteng, No 22"),
          new CardToko(gambar: "img/shop/6.jpg", nama: "Orchid Plant Shop", rating: "4,0", alamat: "Jl. Merak"),
          new CardToko(gambar: "img/shop/7.JPG", nama: "Botanical Treasure", rating: "3,9", alamat: "Jl. Perahu, No 8"),
          new CardToko(gambar: "img/shop/8.jpg", nama: "Leafa Plant Shop", rating: "4,0", alamat: "Jl. Cakalang, No 10"),
          new CardToko(gambar: "img/shop/9.jpg", nama: "Indoor Garden", rating: "4,2", alamat: "Kompleks Pasar Tani, Blok F"),
          new CardToko(gambar: "img/shop/10.jpg", nama: "Flourish Shop", rating: "4,4", alamat: "Kompleks Pasar Tani, Blok F"),
          new CardToko(gambar: "img/shop/11.jpg", nama: "Gold Garden", rating: "4,8", alamat: "Jl. Batu Putih, No 9"),
    ]));
  }
}

class CardToko extends StatelessWidget {
  CardToko({this.gambar, this.nama, this.rating, this.alamat});
  final String gambar;
  final String nama;
  final String rating;
  final String alamat;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
          child: new Row(
          children: <Widget>[
          new Image.asset(
            gambar,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          new Container(
              padding: new EdgeInsets.all(10),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    nama,
                    style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  new Row(
                    children: <Widget>[
                      new Padding(padding: new EdgeInsets.only(top: 15, bottom: 15)),
                      new Icon(Icons.star, color: Colors.yellow[700], size: 15,),
                      new Text(
                        rating,
                        style: new TextStyle(
                            fontSize: 15, color: Colors.yellow[700]),
                      )
                    ],
                  ),
                  new Text(alamat,
                      style: new TextStyle(
                        fontSize: 15,
                      ))
                ],
              ))
        ],
      )),
    );
  }
}
