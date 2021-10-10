import 'package:flutter/material.dart';

class HizmetEkle extends StatefulWidget {
  const HizmetEkle({Key? key}) : super(key: key);

  @override
  _HizmetEkleState createState() => _HizmetEkleState();
}

class _HizmetEkleState extends State<HizmetEkle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hizmet Ekle'),
      ),
    );
  }
}
