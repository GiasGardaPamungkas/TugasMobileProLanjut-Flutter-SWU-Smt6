import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BuatKotak(Colors.greenAccent, 100, 'Halo'),
                BuatKotak(Colors.orangeAccent[400]!, 70, 'Saya'),
                BuatKotak(Colors.greenAccent, 50, 'Gias'),
                BuatKotak(Colors.orangeAccent[400]!, 90, 'Garda'),
                BuatKotak(Colors.red[300]!, 110, 'Pamungkas'),
                BuatKotak(Colors.blue[300]!, 30, 'eh'),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}

class BuatKotak extends StatefulWidget {
  final Color warna;
  final double ukuran;
  final String nama;

  BuatKotak(this.warna, this.ukuran, this.nama);

  @override
  _BuatKotakState createState() => _BuatKotakState();
}

class _BuatKotakState extends State<BuatKotak> {
  bool _isTextVisible = false;

  void _toggleTextVisibility() {
    setState(() {
      _isTextVisible = !_isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleTextVisibility,
      child: Container(
        height: widget.ukuran,
        width: widget.ukuran,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.warna,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: _isTextVisible
              ? Text(
                  widget.nama,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
