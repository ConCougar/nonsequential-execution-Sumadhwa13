// Allen ISD Computer Science Assignment
// Non-sequential Project | multiplicationTable
// Sumadhwa Guruprasad
// Computer Science I, Period 2
// 2018.01.26


/*
  You're responsible for printing a grid displaying a multiplication table.
  The single argument on the command line will specify the size of the grid.
  For example, if the program is invoked as:, ./multiplicationTable 3 
  Your output should be:
       1   2   3
  1    1   2   3
  2    2   4   6
  3    3   6   9

  You may assume that the maximum grid size is 20.

  Be sure that the numbers in your grid are aligned (i.e. columns are flush right)
  For example:
      3
      6
      9
     12
 Include an assert statement for each assumption that you are making.
 */
assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")
//Continue with your code here

let tableSize = Int(CommandLine.arguments[1])! //this determines the size of the multiplication table
var rows = 0
var columns = 0

assert(tableSize <= 20)

print(terminator:"    ")
for rows in 1...tableSize {
    
    if (rows < 10) {
        print("   \(rows)", terminator:"")
    }
    else {
        print("  \(rows)", terminator:"")
    }

}
print("")

for columns in 1...tableSize {
    if (columns < 10) {
        print("   \(columns)", terminator:"")
    }
    else {
        print("  \(columns)", terminator:"")

    }

        

for rows in 1...tableSize {
    let times = rows * columns
    if(times < 10) {
        print("   \(times)", terminator:"")
    }
    else if (times > 9 && times < 100) {
        print("  \(times)", terminator:"")
    }
    else {
        print(" \(times)", terminator:"")
        
    }
}

print("")

}
