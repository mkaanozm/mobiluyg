import 'package:flutter/material.dart';
import 'soruuyg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,

         body: Column(
           children: [
             Expanded(flex: 3,
               child: Center(child: Text(BenimTestim.soru_metnini_yaz() ,style: TextStyle(fontSize: 30),)),),
             Expanded(flex: 1,
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton
                         (onPressed: (){
                           setState(() {
                             BenimTestim.cevabi_kontrol_et("A");
                           });

                       }, child: Text(BenimTestim.a_sikki_yaz(),style: TextStyle(fontSize: 18)),),
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton
                         (onPressed: (){
                           setState(() {
                             BenimTestim.cevabi_kontrol_et("B");
                           });

                       }, child: Text(BenimTestim.b_sikki_yaz() ,style: TextStyle(fontSize: 18), ),),
                     ),
                   ),
                 ],
               ),
             ),
             Expanded(flex: 1,
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton
                         (onPressed: (){
                           setState(() {
                             BenimTestim.cevabi_kontrol_et("C");
                           });

                       }, child: Text(BenimTestim.c_sikki_yaz(),style: TextStyle(fontSize: 18))),
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton
                         (onPressed: (){
                           setState(() {
                             BenimTestim.cevabi_kontrol_et("D");
                           });


                       }, child: Text(BenimTestim.d_sikki_yaz(),style: TextStyle(fontSize: 18)),),
                     ),
                   ),
                 ],
               ),
             ),

           Text('Sonuç Bilgisi', style: TextStyle(fontSize: 15),),
             Row(children: BenimTestim.d_y_bilgisi,),
             SizedBox(height: 15.0,)
           ],
         ),
      ),
    );
  }
}

