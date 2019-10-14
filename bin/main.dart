// Challenge 1
// Write a function that returns the longest sequence of consecutive zeroes in a binary string.
// Examples:
// longestZero("01100001011000") ➞ "0000"
//
// longestZero("100100100") ➞ "00"
//
// longestZero("11111") ➞ ""

String longestZero(var string){
  String result = '';
  //int count = 0;
  for (int i = 0; i < string.length; i++){
    if(string[i] == '0'){
      result = '$result${string[i]}';
    }
  }
  return (result);
}

// Challenge 2
// Create a function that performs an even-odd transform to an array, n times. Each even-odd transformation:
//
// 1. Adds two (+2) to each odd integer.
// 2. Subtracts two (-2) to each even integer.
// Examples:
// evenOddTransform([3, 4, 9], 3) ➞ [9, -2, 15]
// Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]
//
// evenOddTransform([0, 0, 0], 10) ➞ [-20, -20, -20]
//
// evenOddTransform([1, 2, 3], 1) ➞ [3, 0, 5]

List evenOddTransform(List list, int times) {
  int i = 0;
  List result = [];
  int number;
    for (int x in list) {
      if (x % 2 == 0) {
        number = x - (2 * times);
        result.add(number);
      }
      else {
        number = x + (2 * times);
        result.add(number);
      }
    }

  return result;
}

main() {
List x = [];
x = evenOddTransform([3, 4, 9], 3);
print(x);
print(evenOddTransform([0, 0, 0], 10));
print(evenOddTransform([1, 2, 3], 1));
print(longestZero("01100001011000"));
print(longestZero("100100100"));
}


// Challenge 3
// Write 2 test cases to test both the previous functions in test.dart