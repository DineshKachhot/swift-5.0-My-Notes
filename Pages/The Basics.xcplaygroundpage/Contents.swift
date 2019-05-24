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





//: [Next](@next)
