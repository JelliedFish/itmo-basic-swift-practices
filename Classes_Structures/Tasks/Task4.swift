//
//  Task4.swift
//  Classes_Structures
//
//  Created by Илья on 04.03.2025.
//

/**
 A class representing a bank account.

 This class supports deposit and withdrawal operations
 and allows retrieval of the current balance.

 Properties:
 - `balance: Double` - The current balance of the account.

 Methods:
 - `deposit(amount: Double)`: Increases the balance by the specified amount.
 - `withdraw(amount: Double)`: Decreases the balance by the specified amount if there are sufficient funds.
 - `getBalance() -> Double`: Returns the current balance of the account.
*/
class BankAccount {
    private var balance: Double = 0.0

    func deposit(amount: Double) {
        // Increase the balance
    }

    func withdraw(amount: Double) {
        // Decrease the balance, if sufficient funds are available
    }

    func getBalance() -> Double {
        // Return the current balance
        return 0.0
    }
}
