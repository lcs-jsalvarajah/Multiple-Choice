//
//  main.swift
//  MultipleChoice
//

import Foundation

// INPUT
// Collect and filter user input here
var expectedlines = 6
var vaildInteger = 0
while 1==1 {
    // Test #1: Is it nil?
    guard let givenString = readLine() else {
        print("How many Lines?")
        continue
    }
    // Test #2: Can it be an integer?
    guard let givenInteger = Int(givenString) else {
        print("How Many Lines?")
        continue
    }
    // Test #3
    if givenInteger <= 0  || givenInteger >= 10000 {
        print("How Many Line?")
        continue
    }
    // If all the tests passed
    expectedlines = givenInteger * 2
    break
    
}
// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines

print("Please enter the \(expectedlines/2) student answers followed by the 3 lines of teacher answers")
var letters: [String] = []
var points = 0
for _ in 1...expectedlines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    letters.append(givenLine)
    
    
    
    
    
}


// OUTPUT
// Report results to the user here
if letters[0] == letters[3] {
    points += 1
}
if letters[1] == letters[4] {
    points += 1
}
if letters[2] == letters[5] {
    points += 1
} else {
    print("No work")
}
print("You got \(points) right")
