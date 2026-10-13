import Foundation

//1 board foot = 144 inches^3 (12in x 12in long x 1in thick)
// Calculate length, so every result is exactly 1 board foot
// return board foot value
func CalculateBoardFoot(width: Double, height: Double) -> Double {
    // constant
    let board_foot_inches: Double = 144

    // if input is negative
    if width <= 0 || height <= 0 {
        print("Enter a positive value for width and height")
        // must return double
        return 0.0
    } else {
        //math
        return board_foot_inches / (width * height)
    }
}

// main method
// initialize scanne
print("Enter width: ", terminator: "")

if let widthInput = readLine(),
    let WIDTH = Double(widthInput) {
    print("Enter height: ", terminator: "")

    if let heightInput = readLine(),
        let HEIGHT = Double(heightInput) {
        //output returned result
        print(CalculateBoardFoot(width: WIDTH, height: HEIGHT))
    } else {
        // invalid numebr check
        print("Must enter a valid number, your input was invalid.")
    }
} else {
    print("Must enter a valid number, your input was invalid.")
}
// close scanner to not leak resource.