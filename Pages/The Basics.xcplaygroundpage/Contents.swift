import UIKit

/*:
  - We can assign let as Optional
 */

let letAsOptional:Int?
letAsOptional = 5


/*:
 - You can declare multiple varibles in a single line
 */

var x = 0.0, y = 0.0, z = 0.0


/*:
 - Constant and variable names can contain almost any character, including Unicode characters:
 */

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
let me12 = 12 ///“Nor can they begin with a number, although numbers may be included elsewhere within the name.”

/*:
    - If you need to give a constant or variable the same name as a reserved Swift keyword, surround the keyword with backticks (`) when using it as a name. However, avoid using keywords as names unless you have absolutely no choice.
 */

let `var` = 2.90

/*:
    - separator: A string to print between each item. The default is a single
      space (`" "`).
    - terminator: The string to print after all items have been printed. The
      default is a newline (`"\n"`).
    - output: An output stream to receive the text representation of each
 ///     item.
 */

print("mm", "dd", "yyyy", separator: "-", terminator: " $$$")
//print("Mela", to: &TODO)

/*:
 ## Integers
 */

let int8bit: Int8 = 127
let int16bit: Int16
let int32bit: Int32
let int64bit: Int64

print(INT32_MAX) // Default Int is of 32 bit, BTW int can be of 8, 16, 32, 64 bits.

let minVal = Int8.min
let maxVal = Int8.max

let minValU = UInt8.min
let maxValU = UInt8.max

// So How use sutable int as memory management?
// Use required width int only so the memory can be saved on long run
// Disclaimer:- This is the first glance of my observation, how ever it can be wrong

/*:
 “In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:
 
 - On a 32-bit platform, Int is the same size as Int32.
 
 - On a 64-bit platform, Int is the same size as Int64.”
*/

let mySystemCheck = Int.max
if mySystemCheck == 9223372036854775807 {
    print("My system is of 64bit")
} else {
    print("My system is of 32bit")
}


/*:
 ## Floating-Point Numbers
 
 - Double represents a 64-bit floating-point number.
 
 - Float represents a 32-bit floating-point number.
 */

let minValueFloat: Float
let minValueDouble: Double

/*:
 ### Type Safety and Type Inference:- Type safe is not allow you to assign different type of value at compile time, so can fix it even before run time.
 ### Type Inference:- Type inference is no need to assign a type explicitly, it will infer from value you assign.
 */

/*:
 ### Literal Value:- A literal value is a value that appears directly in your source code, such as 42 and 3.14159 in the examples below.
 */

/*:
 ### Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.
 */

/*:
 ### If you combine integer and floating-point literals in an expression, a type of Double will be inferred from the context:
 */


let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

/*:
 ## Numeric Literals
 
 Integer literals can be written as:
 
 - A decimal number, with no prefix
 
 - A binary number, with a 0b prefix
 
 - An octal number, with a 0o prefix
 
 - A hexadecimal number, with a 0x prefix
 
 All of these integer literals have a decimal value of 17:
 */

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation



/*:
 ### Floating-point literals can be decimal (with no prefix), or hexadecimal (with a 0x prefix). They must always have a number (or hexadecimal number) on both sides of the decimal point. Decimal floats can also have an optional exponent, indicated by an uppercase or lowercase e; hexadecimal floats must have an exponent, indicated by an uppercase or lowercase p.
 
 ### For decimal numbers with an exponent of exp, the base number is multiplied by 10exp:
 
 ### - 1.25e2 means 1.25 x 102, or 125.0.
 
 ### - 1.25e-2 means 1.25 x 10-2, or 0.0125.
 
 ### For hexadecimal numbers with an exponent of exp, the base number is multiplied by 2exp:
 
 ### - 0xFp2 means 15 x 22, or 60.0.
 
 ### - 0xFp-2 means 15 x 2-2, or 3.75.”
 
 
 All of these floating-point literals have a decimal value of 12.1875:
 
 */

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/*:
 ### Numeric literals can contain extra formatting to make them easier to read. Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. Neither type of formatting affects the underlying value of the literal:
 */

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


/*:
 ## Numeric Type Conversion
 ### Integer Conversion:
 - The range of numbers that can be stored in an integer constant or variable is different for each numeric type. An Int8 constant or variable can store numbers between -128 and 127, whereas a UInt8 constant or variable can store numbers between 0 and 255. A number that won’t fit into a constant or variable of a sized integer type is reported as an error when your code is compiled:
 
 - Because each numeric type can store a different range of values, you must opt in to numeric type conversion on a case-by-case basis. This opt-in approach prevents hidden conversion errors and helps make type conversion intentions explicit in your code.
 
 
 - To convert one specific number type to another, you initialize a new number of the desired type with the existing value. In the example below, the constant twoThousand is of type UInt16, whereas the constant one is of type UInt8. They can’t be added together directly, because they’re not of the same type. Instead, this example calls UInt16(one) to create a new UInt16 initialized with the value of one, and uses this value in place of the original:
 
 
 */

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)


/*:
 - Because both sides of the addition are now of type UInt16, the addition is allowed. The output constant (twoThousandAndOne) is inferred to be of type UInt16, because it’s the sum of two UInt16 values.
 
 - SomeType(ofInitialValue) is the default way to call the initializer of a Swift type and pass in an initial value. Behind the scenes, UInt16 has an initializer that accepts a UInt8 value, and so this initializer is used to make a new UInt16 from an existing UInt8. You can’t pass in any type here, however—it has to be a type for which UInt16 provides an initializer. Extending existing types to provide initializers that accept new types (including your own type definitions) is covered in Extensions.
 */


/*:
 ## Integer and Floating-Point Conversion
 */

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

/*:
 # Type Aliases:
 - Type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword.
 
 */

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

/*:
 # Tuples:
 - Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.
 */

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

/*:
 - You can decompose a tuple’s contents into separate constants or variables, which you then access as usual:
 */

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found

/*:
 - Alternatively, access the individual element values in a tuple using index numbers starting at zero:
 */

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found

/*:
 - You can name the individual elements in a tuple when the tuple is defined:
 */

let http200Status = (statusCode: 200, description: "OK")

/*:
 - If you name the elements in a tuple, you can use the element names to access the values of those elements:
 */

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK

/*:
 # Optionals:
 You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.
 
 An optional Int is written as Int?, not Int. The question mark indicates that the value it contains is optional, meaning that it might contain some Int value, or it might contain no value at all. (It can’t contain anything else, such as a Bool value or a String value. It’s either an Int, or it’s nothing at all.)
 
 You set an optional variable to a valueless state by assigning it the special value nil.
 
 Swift’s nil isn’t the same as nil in Objective-C. In Objective-C, nil is a pointer to a nonexistent object. In Swift, nil isn’t a pointer—it’s the absence of a value of a certain type. Optionals of any type can be set to nil, not just object types.
 */
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int
/*:
 ## If Statements and Forced Unwrapping
 You can use an if statement to find out whether an optional contains a value by comparing the optional against nil. You perform this comparison with the “equal to” operator (==) or the “not equal to” operator (!=).
 */

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value.

/*:
 ## Forced Unwrapping
 Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional’s name. The exclamation mark effectively says, “I know that this optional definitely has a value; please use it.” This is known as forced unwrapping of the optional’s value:
 */
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123.

/*:
 ## Optional Binding:
 You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.
 
 Optional Binding using if and guard as follow:
 */

// Using if
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"

// We can use guard as well

/*:
 You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas.
 */

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100”
