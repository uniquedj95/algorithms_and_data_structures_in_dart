class MergeSort<T> {
  call(List<T> list, int leftIndex, int rightIndex) =>
      mergeSort(list, leftIndex, rightIndex);

  void mergeSort(List<T> list, int leftIndex, int rightIndex) {
    if (leftIndex < rightIndex) {
      int middleIndex = (rightIndex + leftIndex) ~/ 2;

      mergeSort(list, leftIndex, middleIndex);
      mergeSort(list, middleIndex + 1, rightIndex);

      merge(list, leftIndex, middleIndex, rightIndex);
    }
  }

  void merge(List<T> list, int leftIndex, int middleIndex, int rightIndex) {
    int leftSize = middleIndex - leftIndex + 1;
    int rightSize = rightIndex - middleIndex;

    List<T> leftList = List<T>.empty(growable: true);
    List<T> rightList = List<T>.empty(growable: true);

    for (int i = 0; i < leftSize; i++) leftList[i] = list[leftIndex + i];
    for (int j = 0; j < rightSize; j++)
      rightList[j] = list[middleIndex + j + 1];

    int i = 0, j = 0;
    int k = leftIndex;

    while (i < leftSize && j < rightSize) {
      // if (leftList[i] >= [j]) {
      //   list[k] = leftList[i];
      //   i++;
      // } else {
      //   list[k] = rightList[j];
      //   j++;
      // }
      // k++;
    }

    while (i < leftSize) {
      list[k] = leftList[i];
      i++;
      k++;
    }

    while (j < rightSize) {
      list[k] = rightList[j];
      j++;
      k++;
    }
  }
}
