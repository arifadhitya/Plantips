import 'package:flutter/material.dart';

class Ask extends StatefulWidget {
  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {

  void kirimpertanyaan(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 110,
        child: new Column(
          children:<Widget>[
            new Text("Pesan terkirim,\nSilahkan tunggu balasan pada email anda"),
            new Padding(padding: new EdgeInsets.only(top: 10)),
            new RaisedButton(
              child: new Text("Ok"),
              onPressed: ()=>Navigator.pop(context),
              )
          ]
        ),),
    );
    showDialog(context: context, child: alertDialog);
  }

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerTanaman = new TextEditingController();
  TextEditingController controllerCurhat = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10),
            child: new Column(
              children:<Widget>[
                new Text("\nAsk Me About Your Plants\n", style: new TextStyle(fontSize: 50, color: Colors.lightGreen, fontWeight: FontWeight.bold)),
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                    hintText:"Nama Lengkap",
                    labelText:"Nama Lengkap",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10)),
                new TextField(
                  controller: controllerEmail,
                  decoration: new InputDecoration(
                    hintText:"Alamat Email",
                    labelText:"Alamat Email",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10)),
                new TextField(
                  controller: controllerTanaman,
                  decoration: new InputDecoration(
                    hintText:"Nama Tanaman",
                    labelText:"Nama Tanaman",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10)),
                new TextField(
                  controller: controllerCurhat,
                  maxLines: 10,
                  decoration: new InputDecoration(
                    hintText:"Ceritakan Masalah Tanamanmu",
                    labelText:"Ceritakan Masalah Tanamanmu",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10)),
                new RaisedButton(
                  child: new Text("Kirim", style: new TextStyle(color:Colors.white),),
                  color: Colors.lightGreen,
                  onPressed: (){
                    kirimpertanyaan();
                    setState(() {
                      controllerNama.clear();
                      controllerEmail.clear();
                      controllerTanaman.clear();
                      controllerCurhat.clear();
                    });
                    },)
              ]
            ),
          )
        ],),
    );
  }
}