double average(List<num> numbers) {
  num summ = 0;
  for (num number in numbers) {
    summ += number;
  }

  double averageNum = summ / numbers.length;

  return averageNum;
}
