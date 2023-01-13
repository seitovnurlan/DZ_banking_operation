//
//  Customer.swift

import Foundation

class Customer {
    var firstName: String = ""       //Имя
    var lastName: String = ""        //Фамилия
    var middleName: String = ""      //Отчество
    var creditAmount: Double = 0.0   //Cумма кредита
    var creditPeriod: Int = 0        //Cрок кредита
    var repaymentAmount: Double = 0.0 //Cумма погашения
    
    init(firstName: String, lastName: String, middleName: String, creditAmount: Double, creditPeriod: Int, repaymentAmount: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.creditAmount = creditAmount
        self.creditPeriod = creditPeriod
        self.repaymentAmount = repaymentAmount
    }
    func showInfo(){
        print("firstName: \(firstName), lastName: \(lastName), middleName: \(middleName), creditAmount \(creditAmount), creditPeriod \(creditPeriod), repaymentAmount \(repaymentAmount)")
    }
}

