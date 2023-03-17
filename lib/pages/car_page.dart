import 'dart:math';

import 'package:anas/pages/add_page.dart';

enum options { PANORAMA, CAMERA, GBS }

class Car {

  int id;
  String type;
  double price;
  options? option;

  Car(
      {this.id = -1,
        this.price = 1000,
        this.type = '',
        this.option });

  static List<Car> generateCar(int count ,int idd,double pricee,String typee,options? optionn ) {
    List<Car> car = [];
    for (int i = 1; i <= count; i++) {


      car.add(
        Car(
          id: idd,
          price:pricee,
          type: typee,
          option:optionn,
        ),
      );

    }
    return car;
  }
}