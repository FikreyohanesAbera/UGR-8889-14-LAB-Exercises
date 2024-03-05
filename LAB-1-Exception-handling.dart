void throwErrorFunction() {
  throw Exception("Error");
}

void main() {
  try {
    throwErrorFunction();
  } catch (err) {
    print(err);
  }
}
