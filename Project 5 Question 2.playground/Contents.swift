import Cocoa

//: # PE Question 24
//:A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
//: 012   021   102   120   201   210
//: What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

// Disclaimer: I know this code is incredibly inefficient, and I havent put effort into cleanly organizing it. I struggled to memoize it. As such, my computer does not have the processing power to complete this calculation, and it begins to slow around the 50,000th permutation. At this rate, I felt that it was impossible for my machine to get this answer using this method, so no final answer was produced. However, I believe that, despite the poor construction, the code still technically works, given enough time and power.
// Given the above disclaimer, this is not an official submission, however, I wish to atleast display the effort and attempt

let list: [String] = ["0","1","2","3","4","5","6","7","8","9"]
var perm_list: [String] = []
for spotOne in list[0...9] {
    let one = spotOne
    for spotTwo in list[0...9] {
        if [one].contains(spotTwo) {
        } else {
            let two = spotTwo
            for spotThree in list[0...9] {
                if [one, two].contains(spotThree) {
                    let three = spotThree
                    for spotFour in list[0...9] {
                    if [one, two, three].contains(spotFour) {
                    } else {
                        let four = spotFour
                        for spotFive in list[0...9] {
                        if [one, two, three, four].contains(spotFive) {
                        } else {
                            let five = spotFive
                            for spotSix in list[0...9] {
                            if [one, two, three, four, five].contains(spotSix) {
                            } else {
                                let six = spotSix
                                for spotSeven in list[0...9] {
                                if [one, two, three, four, five, six].contains(spotSeven) {
                                } else {
                                    let seven = spotSeven
                                    for spotEight in list[0...9] {
                                    if [one, two, three, four, five, six, seven].contains(spotEight) {
                                    } else {
                                        let eight = spotEight
                                        for spotNine in list[0...9] {
                                        if [one, two, three, four, five, six, seven, eight].contains(spotNine) {
                                        } else {
                                            let nine = spotNine
                                            for spotTen in list[0...9] {
                                            if [one, two, three, four, five, six, seven, eight, nine].contains(spotTen) {
                                            } else {
                                                let ten = spotTen
                                                let permutation = one + two + three + four + five + six + seven + eight + nine + ten
                                                perm_list.append(permutation)
                                                if perm_list.count == 1_000_000 {
                                                    break
                                                } else {}
                                                }
                                            }
                                            }
                                        }
                                        }
                                    }
                                    }
                                }
                                }
                            }
                            }
                        }
                        }
                    }
                }
            }
        }
    }
}
print(perm_list[999_999])
