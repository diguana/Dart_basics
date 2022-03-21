import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);
  

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.one() {
    return Point(1, 1, 1);
  
}

   double distanceTo(Point pointAnother) {
    final pointOne = Point.one();

    var xDifference = (pointAnother.x - x) * 2;
    var yDifference = (pointAnother.y - y) * 2;
    var zDifference = (pointAnother.z - z) * 2;

    return sqrt(xDifference + yDifference + zDifference);
  }

}
 extension Root on num {
  double nth_root(int rootDegree) {
    var num = this;

    double eps = 0.001;

    double root = num / rootDegree;
    var rn = num;
    while ((root - rn).abs() >= eps) {
      rn = num;
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      if (root.isInfinite) {
        print("cтепень не может быть $rootDegree"); 
        break;
      } else {
        root = 0.5 * (rn + root);
      }
    }
    return root;
  }
}