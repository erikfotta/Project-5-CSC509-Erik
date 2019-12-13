//: evenOdd
//:Return an array that contains the exact same numbers as the given array, but rearranged so that all the even numbers come before all the odd numbers. Other than that, the numbers can be in any order. You may modify and return the given array, or make a new array.
//:evenOdd([1, 0, 1, 0, 0, 1, 1]) → [0, 0, 0, 1, 1, 1, 1]
//:evenOdd([3, 3, 2]) → [2, 3, 3]
//:evenOdd([2, 2, 2]) → [2, 2, 2]
//: [Link!](https://codingbat.com/prob/p105771)

import Cocoa

// Test Array
let testArray: [Int] = [1,4,2,6,7,13,4,22,13,33,22,1,6,6,7,6]

// Initialize variables
var evenArray: [Int] = []
var oddArray: [Int] = []

// Determine even or odd, and sort accordingly
for i in testArray {
    if i % 2 == 0 {
        evenArray.append(i)
    } else {
        oddArray.append(i)
    }
}

// Sort each array into ascending order (not required, but looks nice!)
evenArray.sort()
oddArray.sort()

// Combine arrays
var finalArray = evenArray + oddArray
print(finalArray)
