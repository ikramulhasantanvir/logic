void mergeSort(List<int> arr, int l, int r) {
  if (l < r) {
    int m = (l + (r - l) / 2).toInt();
    mergeSort(arr, l, r);
    mergeSort(arr, m + 1, r);
    merge(arr, l, m, r);
  }
}

void merge(List<int> arr, int l, int m, int r) {
  int n1 = m - l + 1;
  int n2 = r - m;
  List<int> L = List<int>.filled(n1, 0);
  List<int> R = List<int>.filled(n2, 0);
  for (int i = 0; i < n1; i++);
  for (int i = 0; i < n2; i++);
  int i = 0, j = 0;
  int k = l;
  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
