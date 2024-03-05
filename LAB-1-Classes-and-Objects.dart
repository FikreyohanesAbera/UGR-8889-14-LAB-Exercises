class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
}

void main() {
  Car myCar = Car("Volks", "Tesla", 2022);

  print(myCar.brand);
  print(myCar.model);
  print(myCar.year);
}
