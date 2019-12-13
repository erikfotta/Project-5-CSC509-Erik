//: # countClumps
//: Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value. Return the number of clumps in the given array.
//: countClumps([1, 2, 2, 3, 4, 4]) → 2
//: countClumps([1, 1, 2, 1, 1]) → 2
//: countClumps([1, 1, 1, 1, 1]) → 1
//: [Link to the Problem!](https://codingbat.com/prob/p193817)

import Cocoa

//Test array, modified from codingBat to be more comprehensive
let testArray = [1,2,2,2,3,4,4,4,4,4,5,6,7,7,7,8,8]

//Initialize variables
var oldNum = 0
var clumpCount = 0
var inClump = false

// Iterate through the test array to find all clumps
for num in testArray {
    // Determine start of a clump
    if num == oldNum {
        // Check if in a clump already (for clumps over two numbers long) & add to the final clump count
        if inClump == false {
            clumpCount += 1
            inClump = true
        } else {}
    } else {
        // Change state to end clump/maintain out of clump status
        inClump = false
    }
    // Reset 'oldNum'
    oldNum = num
}
print(clumpCount)
