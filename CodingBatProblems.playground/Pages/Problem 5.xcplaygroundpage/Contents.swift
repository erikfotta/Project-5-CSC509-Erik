//: # zeroFront
//: Return an array that contains the exact same numbers as the given array, but rearranged so that all the zeros are grouped at the start of the array. The order of the non-zero numbers does not matter. So {1, 0, 0, 1} becomes {0 ,0, 1, 1}. You may modify and return the given array or make a new array.
//: zeroFront([1, 0, 0, 1]) → [0, 0, 1, 1]
//: zeroFront([0, 1, 1, 0, 1]) → [0, 0, 1, 1, 1]
//: zeroFront([1, 0]) → [0, 1]
//: [Link!](https://codingbat.com/prob/p193753)

import Cocoa

// Test Array
let testArray: [Int] = [0,4,0,3,4,2,0,4,0,0,6,4,0,4,4,1]

// Initialize variables
var zeroList: [Int] = []
var otherList: [Int] = []

// Determine if 0 or not
for number in testArray {
    if number == 0 {
        zeroList.append(number)
    } else {
        otherList.append(number)
    }
}

// Sort non-zero list
otherList.sort()

// Add non-zero list to the back of 'zeroList'
let finalArray = zeroList + otherList
print(finalArray)
