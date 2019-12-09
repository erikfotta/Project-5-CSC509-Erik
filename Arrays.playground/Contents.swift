import Cocoa

//Initializing an empty array of strings
var studentFirstNames: [String] = [String]()

studentFirstNames.append("Joe")
studentFirstNames.append("Sally")
studentFirstNames.append("Rogan")

print(studentFirstNames)

//Initializing an array with contents already
var studentLastNames: [String] = ["Smith", "Garfield", "Culver"]

//func so we dont have to type this shit over and over
func printStudent(at i: Int){
    print("Student \(i+1): \(studentFirstNames[i]) \(studentLastNames[i])")
}

//Accessing individual elements of the array
//Iterate over the list
for firstName in studentFirstNames {
    print(firstName)
}

//Notice that arrays can be indexed
print(studentLastNames[0...1])
print(type(of: 0...1))
print(type(of: studentLastNames[0...1]))

for i in 0...2 {
    printStudent(at: i)
}

//What if we dont know where the list ends?
print(studentLastNames.count)

for i in 0...(studentLastNames.underestimatedCount - 1){
    printStudent(at: i)
}

//solution 2
for i in 0..<studentLastNames.count {
    printStudent(at: i)
}

//-----OVERALL BETTER WAY TO DO THIS-----

struct Student {
    var firstName: String
    var lastName: String
    
    func printStudent(at i: Int){
        print("Student \(i+1): \(firstName) \(lastName)")
    }
}

var students: [Student] = [Student]()

//for example:
let firstStudent = Student(firstName: studentFirstNames[0], lastName: studentLastNames.first!)

//populate the students array
for i in 0..<studentLastNames.count {
    let newStudents = Student(firstName: studentFirstNames[i], lastName: studentLastNames[i])
    students.append(newStudents)
    print(students)
}

// we cant access the index here which we kinda need for printStudent
for newStudents in students {
    newStudents.printStudent(at:0)
}
