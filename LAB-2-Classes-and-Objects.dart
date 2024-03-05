class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void funct() {
    print("Vroom Vroom");
  }
}

void main() {
  Car myCar = Car("Volks", "Tesla", 2022);

  print(myCar.brand);
  print(myCar.model);
  print(myCar.year);

  myCar.funct();
}
