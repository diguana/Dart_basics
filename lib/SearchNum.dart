class SearchNum {
  dynamic words (String text){
    Map numbers = {
0: 'zero',
1: 'one',
2: 'two',
3: 'three',
4: 'four',
5: 'five',
6: 'six',
7: 'seven',
8: 'eight',
9: 'nine'
    };
    Set<int> wordList = {};
    List<String> allWords = text.split(", ");
    for (var i = 0; i < allWords.length; i++){
      numbers.forEach((key, value) {
        if (allWords[i] == value){
          wordList.add(key);

        }
      });
    }
    return (wordList);

  }
}