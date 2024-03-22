import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

TextEditingController txtprice=TextEditingController();
TextEditingController txtcontit=TextEditingController();
TextEditingController txtproduct=TextEditingController();
TextEditingController txtGST=TextEditingController();
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biling App"),
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
          SizedBox(height: 5,),
          TextField(
            keyboardType: TextInputType.number,
            controller: txtcontit,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'contit',
            ),
          ),
          TextField(
            controller: txtproduct,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'product',
            ),
          ),
          TextField(
            controller: txtGST,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'GST 18%,28%,9%',
            ),
          ),

          TextButton(onPressed: () {
           Navigator.of(context).pushNamed('edit');
            setState(() {
              price=double.parse(txtprice.text);
              GST=double.parse(txtGST.text);
              product=txtproduct.text;
              contit=int.parse(txtcontit.text);
              price =(price*contit) ;
              stor=price*GST/100;
              totel=stor+price;

            });
          }, child: Text('PDF')),
          Text('${totel}'),
          TextButton(onPressed: () {
            Navigator.of(context).pushNamed('/Edinting').then((value) {
              setState(() {

              });
            });
          }, child: Text('Edit'))

          
        ],
      ),
    );
  }
}
void method(){

}

double price=0;
double GST=0;
int  contit=0;
String product='';
double totel=0;
double stor=0;



