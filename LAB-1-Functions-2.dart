double calculateAverage(List<num> numbers) {

  num sum = numbers.reduce((a, b) => a + b);

  double average = sum / numbers.length;

  return average;
}



