Future<int> getData() {
  return Future.delayed(Duration(seconds: 3), () => 46);
}

void main() {
  getData().then((int result) {
    print(result);
  });
}
