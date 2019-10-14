import 'package:test/test.dart';
import 'main.dart';
void main(){
  test('evenOddTransform Check', (){
    expect(evenOddTransform([1, 2, 3], 2), [5, -2, 7]);
    expect(evenOddTransform([0, 0, 0], 10), [-20, -20, -20]);

  });
  test('longestZeros Check',(){
    expect((longestZero("100100100")),'000000');
    expect(longestZero("01100001011000"), '000000000');
  });
}