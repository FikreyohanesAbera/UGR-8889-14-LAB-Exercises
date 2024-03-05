class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void funct() {
    print("Vroom Vroom");
  }
}

class ElectricCar extends Car {
  double batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);
}

void main() {
  ElectricCar elecCar = ElectricCar("Tesla", "Model X", 2024, 400);

  print(elecCar.brand);
  print(elecCar.model);
  print(elecCar.year);
  print(elecCar.batteryLife);

  elecCar.funct();
}
