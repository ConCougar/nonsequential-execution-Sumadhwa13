// Allen ISD Computer Science Assignment
// Non-sequential Project | complexATM
// Sumadhwa Guruprasad
// Computer Science I, Period 2
// 2018.03.21


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $5 and $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 5.
  You must print one line indicating that either a $5 or $20 bill was dispensed
  for each bill dispensed.

  For example, if the program is invoked as:  ./complexATM 75
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed
  $5.00 dispensed
  $5.00 dispensed
  $5.00 dispensed

  Include an assert statement for each assumption that you are making.
*/
assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")

// Continue with your code here

//var dollarAmount = Int(CommandLine.arguments[1])!
assert(dollarAmount % 5 == 0, "Dollar value must be evenly divisible by $100.00, $20.00, and $5.00")

print("ATM will now dispense $100.00 bills, $20.00 bills, and $5.00 bills to deliver the sum of $\(dollarAmount).00")

func billDispenser(amount:Int, denomination:Int) -> Int {
    var dollarAmount = amount
    let amountOfBills = Int(dollarAmount / denomination)
    for _ in 0..<amountOfBills {
        print("$\(denomination).00 dispensed")
    }
    dollarAmount = dollarAmount - (amountOfBills * denomination)
    return dollarAmount
}

dollarAmount = billDispenser(amount:dollarAmount, denomination:100)
dollarAmount = billDispenser(amount:dollarAmount, denomination:20)
dollarAmount = billDispenser(amount:dollarAmount, denomination:5)

        
