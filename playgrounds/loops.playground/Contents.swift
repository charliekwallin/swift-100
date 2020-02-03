import UIKit

/*:

 # Swift Day 4: Loops
 ## for
 */

let count =  1...5
for number in count {
    print ("Number is \(number)")
}

/*:
 ## while
 
 Using his examples but not trying to copy versbating, just thinking through it
 */

var number = 1

while (number <= 20) {
    number += 1
}

print ("Ready or not, here I come.")

repeat {
    print("This is false")
} while false

 
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// using the continue statement

for i in 0...9 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// lets try it with weekdays

let daysInWeek = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
    ]

for day in daysInWeek {
    print("\(day)")
}
