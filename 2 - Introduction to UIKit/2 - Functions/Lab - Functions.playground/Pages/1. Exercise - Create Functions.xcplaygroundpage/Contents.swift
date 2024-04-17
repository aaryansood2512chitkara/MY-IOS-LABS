/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself (intoduction: String){
    print(intoduction)
}

introduceMyself(intoduction: "Hello my name is Ashu Sharma")
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall(randomNumber: Int){
    if randomNumber%2 == 0 {
        print("random number \(randomNumber) is even")
    }else{
        print("random number \(randomNumber) is odd")
    }
}

let randomNumber = Int.random(in: 0...100)

magicEightBall(randomNumber: randomNumber)
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
