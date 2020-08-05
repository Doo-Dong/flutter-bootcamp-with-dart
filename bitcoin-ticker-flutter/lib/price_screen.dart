import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'dart:convert';

// TODO : remove apiKey before commit & push
const apiKey = '53DAD917-669A-4037-BE48-000BE750DFCC';
const url = 'https://rest.coinapi.io/v1/exchangerate';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  List<String> rate = [];

  void getExchangeRate() async {
    cryptoList.forEach((element) async {
      if(rate.isEmpty) {
        for(int i = 0; i < cryptoList.length; i++) {
          rate.add('');
        }
        print('RATE INIT DONE');
      }

      http.Response response =
          await http.get('$url/$element/$selectedCurrency?apikey=$apiKey');

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print('GET RATE [$element / $selectedCurrency]');
        setState(() {
          rate[cryptoList.indexOf(element)] = data['rate'].toInt().toString();
        });
      } else {
        print('STATUS CODE : ' + response.statusCode.toString());
      }
    });
  }

  DropdownButton<String> androidPicker() {
    List<DropdownMenuItem<String>> setCurrenciesList() {
      List<DropdownMenuItem<String>> dmi = [];

      currenciesList.forEach((element) {
        dmi.add(DropdownMenuItem(
          child: Text(element),
          value: element,
        ));
      });

      return dmi;
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: setCurrenciesList(),
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          getExchangeRate();
        });
      },
    );
  }

  CupertinoPicker iosPicker() {
    List<Text> setCupertinoCurrenciesList() {
      List<Text> ccl = [];

      currenciesList.forEach((element) {
        ccl.add(Text(
          element,
          style: TextStyle(color: Colors.white),
        ));
      });

      return ccl;
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (value) {
        setState(() {
          selectedCurrency = currenciesList[value];
          getExchangeRate();
        });
      },
      children: setCupertinoCurrenciesList(),
    );
  }

  List<Widget> MultiCard() {
    List<Widget> multiCard = [];

    cryptoList.forEach((element) {
      multiCard.add(
        Card(
          color: Colors.lightBlueAccent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child: Text(
              '1 ${element} = ${rate[cryptoList.indexOf(element)]} $selectedCurrency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    });

    return multiCard;
  }

  @override
  void initState() {
    super.initState();
    getExchangeRate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: MultiCard(),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidPicker(),
          ),
        ],
      ),
    );
  }
}
