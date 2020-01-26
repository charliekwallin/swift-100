import UIKit

// Arrays

let mandolin = "Peggy"
let whistle = "Hug"
let banjo = "Tim"
let fiddle = "Philip"
let concertina = "Charlie"

let sessionInstruments = [mandolin, whistle, banjo, fiddle, concertina]

print(sessionInstruments)

// Sets

let instruments = Set(["Fiddle", "Concertina", "Whistle"])

print(instruments)

let costOfInstruments = [
    "concertina": 5_500,
    "whistle": 2_000
]

print(costOfInstruments)

// Enums

enum Compass {
    case north
    case east
    case south
    case west
}

var direction = Compass.north
print(direction)










