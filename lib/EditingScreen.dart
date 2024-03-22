import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class Editing extends StatefulWidget {
  const Editing({super.key});

  @override
  State<Editing> createState() => _EditingState();
}

class _EditingState extends State<Editing> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: txtprice,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'price',

            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: txtcontit,
            decoration: InputDecoration(
              hintText: 'contit',
            ),
          ),
          TextField(
            
            controller: txtproduct,
            decoration: InputDecoration(
              hintText: 'product',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: txtGST,
            decoration: InputDecoration(
              hintText: 'GST 18%,28%,9%',
            ),
          ),

          // TextButton(onPressed: () {
          //   Navigator.of(context).pushNamed('edit');
          //
          // }, child: Text('PDF')),
          Text('${totel}'),
          TextButton(onPressed: () {
            price=double.parse(txtprice.text);
            GST=double.parse(txtGST.text);
            product=txtproduct.text;
            contit=int.parse(txtcontit.text);
            price =(price*contit) ;
            stor=price*GST/100;
            totel=stor+price;
            Navigator.of(context).pop();

          }, child: Text('Done Edit'))


        ],
      ),
    );
  }
}