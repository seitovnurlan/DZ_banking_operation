//
//  Customer.swift

import Foundation

class Customer {
    var firstName: String       //Имя
    var lastName: String        //Фамилия
    var middleName: String     //Отчество
    var creditAmount: Double   //Cумма кредита
    var creditPeriod: Int      //Cрок кредита
    var repaymentAmount: Double  //Cумма погашения
    var interestRate: Double        // процентная ставка
    
    init(firstName: String, lastName: String, middleName: String, creditAmount: Double, creditPeriod: Int, repaymentAmount: Double, interestRate: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.creditAmount = creditAmount
        self.creditPeriod = creditPeriod
        self.repaymentAmount = repaymentAmount
        self.interestRate = interestRate
    }
    func showInfo(){
        print("firstName: \(firstName), lastName: \(lastName), middleName: \(middleName), creditAmount \(creditAmount), creditPeriod \(creditPeriod), repaymentAmount \(repaymentAmount), interestRate \(interestRate)")
    }
}

