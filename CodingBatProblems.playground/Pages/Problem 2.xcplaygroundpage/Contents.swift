//: # seriesUp
//: Given n>=0, create an array with the pattern {1,    1, 2,    1, 2, 3,   ... 1, 2, 3 .. n} . Note that the length of the array will be 1 + 2 + 3 ... + n, which is known to sum to exactly n*(n + 1)/2.
//: seriesUp(3) → [1, 1, 2, 1, 2, 3]
//: seriesUp(4) → [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
//: seriesUp(2) → [1, 1, 2]
//: [Link!](https://codingbat.com/prob/p104090)

import Cocoa

// Set 'n' value here
// 'n' represents the final number to which the pattern will generate
let n = 10
var list: [Int] = []

// Interate twice, creating a series within a series, with the inner generating to the length of the outer
for lead in 1...n {
    for i in 1...lead {
        list.append(i)
    }
}
print(list)
