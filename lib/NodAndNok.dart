class DelimetersCalculator  {

int gcdCalculator(int a, int b) => a.gcd(b);
int lcmCalculator(int a, int b) => (a * b) ~/ a.gcd(b);
}

PrimeFactor () {
bool allFactor(int a) {
    
    List numbers = [];
    
    for (var i = 1; i <= a; i++) {
      if (a % i == 0) {
        numbers.add(i);
      }
    }
      return numbers.length == 2;
  }
  
  dynamic factor(int a) {
    
    if (allFactor(a)) {
      print("1 * $a");
      return false;
    }
    
    int div = 2;
    List<int> result = [];
    
    while (a > 1) {
      while (a % div == 0) {
        
        if (allFactor(div)) {
           result.add(div);
           a = a ~/ div;
        }
      }

     if (div == 2)
        div++;
      else
        div += 2;
    }
    
    print(result.join(' * '));
  }
  }