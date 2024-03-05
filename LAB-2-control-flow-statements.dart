void main() {
  int limit = 10;

  int num1 = 0, num2 = 1;

  print(num1);
  print(num2);

  for (int i = 2; i < limit; i++) {
    int num3 = num1 + num2;
    print(num3);
    num1 = num2;
    num2 = num3;
  }
}
