import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String hello = "";
  /*eğer hello string ini --*-- olduğu yere koysaydık butona bastığızda ilk hello= "hello world" olur
   sonra set state tetklendiği için tekrar build methodu çalışır ve hello="" bir şekilde döndürürdü. */

  @override
  Widget build(BuildContext context) {
    // --*--
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter appbar"),
        centerTitle: true,
      ),
      body: Center(
        //uygulamayı yeni methodlara bölerek kullanmak verimliliği ve ilerde göreceğimiz state management a hazırlık sağlar
        child: newColunm(),
      ),
    );
  }

  Column newColunm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            _change();
          },
          child: const Text(" Lütfen Butona Tıklayınız"),
        ),
        const SizedBox(height: 20),
        Text(hello),
      ],
    );
  }

  void _change() {
    setState(() {
      //setState build widgetini tekar çalıştırı!
      hello = "Hello World!";
    });
  }
}
