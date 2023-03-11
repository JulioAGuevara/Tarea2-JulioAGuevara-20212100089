import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
  
}

class _HomePageState extends State<HomePage>{
  int contador = 10;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 2',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(31, 41, 90, 1),
          title: const Text('Tarea 2'),
        ),
        body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$contador',style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255, 1)) ),
            ]),
        ),

        backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(width: 30,),
            ElevatedButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all( const Color.fromRGBO(3, 135, 224, 0.80))),
              onPressed: (){
                contador += 2;
                setState(() {});
              }, 
              icon: const Icon(Icons.add, size: 0,), 
              label: const Text('Sumar')),
              const Spacer(),
            ElevatedButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(255, 66, 8, 0.80))),
              onPressed: (){
                if(contador == 0){
                  contador = 0;
                  setState(() {});
                  return;
                }
                contador -= 2;
                setState(() {});
              }, 
              icon: const Icon(Icons.add, size: 0,), 
              label: const Text('Restar')),
              const Spacer(),
            ElevatedButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(3, 224, 14, 0.80))),
              onPressed: (){
                
                contador *= 2;
                setState(() {});
              }, 
              icon: const Icon(Icons.add, size: 0,), 
              label: const Text('Multiplicar')),
              const Spacer(),
            ElevatedButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(255, 176, 6, 0.80))),
              onPressed: (){
                if(contador == 0){
                  contador = 0;
                  setState(() {});
                  return;
                }
                contador ~/= 2;
                setState(() {});
              }, 
              icon: const Icon(Icons.add, size: 0,), 
              label: const Text('Dividir')),
          ],
        ),
      ),
    );
  }
}