class NumberConversion {
    dynamic tenForTwo(int a){
     return a.toRadixString(2);
    }
    dynamic twoForTen(int a){
      return int.parse('$a', radix: 2);
    }
  }
  class ParsingRowIntoNums {
    dynamic search(String text) {
    List<String> listWords = text.split(' ');
    List<String> listNumbers = [];

    for (var i = 0; i < listWords.length; i++) {
      if (double.tryParse(listWords[i]) != null) {
        listNumbers.add(listWords[i]);
      }
    }
    return(listNumbers);

    }
  }