class MyList {
  late List<int> _items;

  MyList(List<int> items) {
    _items = items;
  }

  Iterator<int> getIterator() {
    return _items.iterator;
  }
}

void main() {
  var myList = MyList([1, 2, 3, 4, 5]);
  var iterator = myList.getIterator();

  while (iterator.moveNext()) {
    print(iterator.current);
  }
}