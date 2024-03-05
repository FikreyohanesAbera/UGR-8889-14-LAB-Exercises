List<T> removeDuplicates<T>(List<T> inputList) {
  Set<T> uniqSet = {};
  List<T> res = [];

  for (T item in inputList) {
    if (uniqSet.add(item)) {
      res.add(item);
    }
  }

  return res;
}
