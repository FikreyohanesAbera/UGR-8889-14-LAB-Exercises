void main() {
  try {
    List<num> list = [1, 2, 3];
    print(list[4]);
  } catch (e) {
    {
      print("Error reading from list");
    }
  } finally {
    print("Thank you for Trying our product");
  }
}
