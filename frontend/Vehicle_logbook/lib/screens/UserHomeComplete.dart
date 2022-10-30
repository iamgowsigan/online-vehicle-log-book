import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Vehicle {
  final String vehicleNumber;
  final String vehicleManufactureCompany;
  final String vehicleModel;
  final String vehicleEngineModel;
  final String vehiclecc;
  final List datearray;
  final List servicearray;

  const Vehicle(
      {required this.vehicleNumber,
      required this.vehicleManufactureCompany,
      required this.vehicleModel,
      required this.vehicleEngineModel,
      required this.vehiclecc,
      required this.datearray,
      required this.servicearray});

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      vehicleNumber: json['vehicleNumber'],
      vehicleManufactureCompany: json['vehicleManufactureCompany'],
      vehicleModel: json['vehicleModel'],
      vehicleEngineModel: json['vehicleEngineModel'],
      vehiclecc: json['vehiclecc'],
      datearray: json['datearray'],
      servicearray: json['servicearray'],
    );
  }
}

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  TextEditingController _controller = new TextEditingController();

  void searchVehicle(String vehicleNumber) async {
    Uri uri = Uri.parse(
        "https://online-vehicle-log-book.herokuapp.com/vehicles/getVehicle/${vehicleNumber}");

    final response = await http.get(uri, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200) {
      print(response.body);
      if (response.body == "") {
        final snackBar = SnackBar(
          content: Text('No records found!'),
          action: SnackBarAction(
            label: 'Close',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SearchVehicle(
                      veh: response,
                    )));
      }
    } else {
      throw Exception('Failed to search vehicle.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          child: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration:
                    InputDecoration(labelText: "Enter the Vehicle Number"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                    onPressed: () {
                      searchVehicle(_controller.text);
                    },
                    child: Text("Search Vehicle Number")),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class SearchVehicle extends StatefulWidget {
  const SearchVehicle({Key? key, required this.veh}) : super(key: key);

  final http.Response veh;

  @override
  State<SearchVehicle> createState() => _SearchVehicleState();
}

class _SearchVehicleState extends State<SearchVehicle> {
  @override
  Widget build(BuildContext context) {
    Vehicle v = Vehicle.fromJson(jsonDecode(widget.veh.body));
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              v.vehicleNumber,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            child: Column(
              children: [
                Text(v.vehicleNumber),
                Text(v.vehicleManufactureCompany),
                Text(v.vehicleModel),
                Text(v.vehicleEngineModel),
                Text(v.vehiclecc),
                Text(v.datearray.toString()),
                Text(v.servicearray.toString())
              ],
            ),
          )),
    );
  }
}
