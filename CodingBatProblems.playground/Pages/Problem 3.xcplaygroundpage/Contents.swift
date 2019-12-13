//: # canBalance
//: Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal to the sum of the numbers on the other side.
//: canBalance([1, 1, 1, 2, 1]) → true
//: canBalance([2, 1, 1, 2, 1]) → false
//: canBalance([10, 10]) → true
//: [Link!](https://codingbat.com/prob/p158767)

import Cocoa

// Test Array
let testArray: [Int] = [2,1,1,2,1]

// Initialize variables
var sum = 0
var curTotal = 0

// Find sum of the test array
for num in testArray {
    sum += num
}

// Check if odd; if odd it cannot be split evenly
if sum % 2 != 0 {
    print("False")
// Count up until the half way split is hit or overshot
} else {
    for i in testArray {
        if curTotal < sum/2 {
            curTotal += i
        } else if curTotal == sum/2 {
            print("True")
            break
        } else {
            print("False")
            break
        }
    }
}
