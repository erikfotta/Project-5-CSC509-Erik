//: # pre4
//: Given a non-empty array of ints, return a new array containing the elements from the original array that come before the first 4 in the original array. The original array will contain at least one 4. Note that it is valid in java to create an array of length 0.
//: pre4([1, 2, 4, 1]) → [1, 2]
//: pre4([3, 1, 4]) → [3, 1]
//: pre4([1, 4, 4]) → [1]
//: [Link!](https://codingbat.com/prob/p100246)

// Test Array
let testArray: [Int] = [1,2,5,3,7,4,2,5,1]

// Initialize Variable
var builtList: [Int] = []

// Iterate until four is hit, adding all processed numbers to a new array; then break
for i in testArray {
    if i != 4 {
        builtList.append(i)
    } else {
        break
    }
}
print(builtList)
