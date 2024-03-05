Future<int> getData() async {
  await Future.delayed(Duration(seconds: 3));

  return 42;
}

Future<void> processData() async {
  int result = await getData();
  print(result);
}
