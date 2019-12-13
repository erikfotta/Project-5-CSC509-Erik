import Cocoa

//: # PE Question 22
//: Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
//: For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
//: What is the total of all the name scores in the file?

// Importing a file to a Swift playground
// https://sheafk.com/2016/11/17/import-a-text-file-into-playgrounds/
// https://stackoverflow.com/a/31500936
// '.joined(separator: )' method - https://stackoverflow.com/a/25827087
// '.sorted()' method - https://developer.apple.com/documentation/swift/array/2945003-sorted

// Importing the 'names.txt' file
let fileURL = Bundle.main.url(forResource: "names", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

// Variable initializing (most)
var wordLetters: [String] = []
var quotesOpen: Bool = false
var strucNames: [String] = []
var wlValues: String = ""
var wordNumber: Int = 0
let alphabet: [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
var strucNums: [Int] = []
var alphStrucNames: [String] = []

// Splitting 'names.txt' into an array of words & determining each words alphabetical value
for i in content{
    // When not iterating over a name
    if quotesOpen == false {
        if i == "\"" {
            quotesOpen = true
        }else{}
    // When iterating over a name
    } else {
        if i == "\"" {
            // Rejoin individual characters into their respective names & add the reconstructed names to an array
            let name = wordLetters.joined(separator: "")
            strucNames.append(name)
            // Reset 'wordLetters' for the next word
            wordLetters = []
            quotesOpen = false
        }else{
            // Add the character to a new array used above to construct each name
            // Convert the character from type 'String.Element' to type 'String'
            wordLetters.append(String(i))
        }
    }
}
// Alphabetize the list of names
alphStrucNames = strucNames.sorted()

// Create an array of words' numerical values that align with the alphabetized list
for word in alphStrucNames {
    for character in word {
        for letter in alphabet {
            if letter == String(character) {
                wordNumber += (alphabet.firstIndex(of: letter)! + 1)
            }
        }
    }
    strucNums.append(wordNumber)
    wordNumber = 0
}

// Multiply each word's numerical value by its location in the list
var numXloc: [Int] = []
var location = 0
for numericalValue in strucNums {
    location += 1
    numXloc.append(numericalValue * location)
}

// Add all final values together
var finalCount = 0
for value in numXloc {
    finalCount += value
}
print(finalCount)

