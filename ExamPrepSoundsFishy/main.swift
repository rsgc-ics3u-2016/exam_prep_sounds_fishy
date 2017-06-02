import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 */
func getReading(prompt : String) -> Int {
    
    var inputToProcess : Int = Int.min
    
    // Loop until valid input is received
    while inputToProcess == Int.min {
        
        // Show the prompt
        print(prompt, terminator: "")
        
        // Get the user's input
        var input : String?
        input = readLine()
        
        // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
        if let notNilInput = input {
            
            // Try to convert the string to an integer
            if let integerInput = Int(notNilInput) {
                
                // Verify that the input is in the correct range
                if integerInput > 0 {
                    
                    // Save the input given, as we are certain it's what we are looking for now
                    inputToProcess = integerInput
                    
                }
                
            }
            
            
        }
        
    }
    
    // Return the input collected
    return inputToProcess
}

// Get the four readings
var readings : [Int] = []
for n in 1...4 {
    readings.append( getReading(prompt: "Reading \(n)? ") )
}

/*
 
 PROCESS
 
 */
var result = ""
if readings[0] == readings[1] && readings[1] == readings[2] && readings[2] == readings[3] {
    
    // Fish at constant depth
    result = "Fish At Constant Depth"
    
} else {
    
    if readings[0] > readings[1] && readings[1] > readings[2] && readings[2] > readings[3] {
        
        // Readings are decreasing, fish are diving
        result = "Fish Diving"
        
    } else {
        
        if readings[0] < readings[1] && readings[1] < readings[2] && readings[2] < readings[3] {
            
            // Readings are increasing, fish are rising
            result = "Fish Rising"
            
        } else {
            
            // Fish are all over the place!
            result = "No Fish"
            
        }
        
    }
    
}


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

print(result)
