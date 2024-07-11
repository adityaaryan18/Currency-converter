import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage ({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=>_CurrencyConverterMaterialPageState(); 
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result =0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.monetization_on_outlined),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 51, 49, 49),
          title: Text(
            "Currency Converter",
            style: GoogleFonts.josefinSans()
            
            ),
          ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'lib/bg.png', // Replace with the correct path to your image
              fit: BoxFit.cover,
            ),
          ),
          // Your content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "₹ "+result.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      hintText: "Please Enter the amount in USD",
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      result= double.parse(textEditingController.text)*83.61;
                    });
                    
                  
                    debugPrint("Button clicked");
                  },
                  style: const ButtonStyle(
                    elevation: WidgetStatePropertyAll(4),
                    shadowColor: WidgetStatePropertyAll(Color.fromARGB(255, 182, 182, 182)),
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 50, 50, 50)),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text("Convert"),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
