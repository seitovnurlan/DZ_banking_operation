//  Bank.swift

import Foundation

class Bank {
    var clients:[Customer] = [Customer] ()
    
    func countCredit() {
        
        for i in clients {
            if i.creditPeriod == 1 {
                i.interestRate = 30
                i.repaymentAmount += (i.creditAmount * (0.3) + i.creditAmount)
            }
            if i.creditPeriod == 2 {
                i.interestRate = 15
                i.repaymentAmount += (i.creditAmount * (0.15) + i.creditAmount)
            }
            if i.creditPeriod == 3 {
                i.interestRate = 10
                i.repaymentAmount += (i.creditAmount * (0.10) + i.creditAmount)
            }
            if i.creditPeriod == 5 {
                i.interestRate = 13.9
                i.repaymentAmount += (i.creditAmount * (0.10) + i.creditAmount)
            }
           // i.creditAmount += summaCredita
           // i.creditPeriod += srokCredita
            //showInfo()
            print("ФИО заемщика: \(i.firstName) \(i.lastName) \(i.middleName) сумма кредита - \(i.creditAmount)\n срок кредита \(i.creditPeriod) год(а) \n сумма погашения - \(i.repaymentAmount) \n процентная ставка \(i.interestRate)")
        }
        
    }
//    func listOfClient() {
//        for i in clients {
//            print("\(i.firstName), \(i.lastName), \(i.middleName), \(i.creditAmount), \(i.creditPeriod), \(i.repaymentAmount)")
//        }
//    }
    
        func print_graph(_ person: String) {
            let period = 12
            var p: Double = 0.0
            var p1: Double = 0.0
            var p2: Double = 0.0
        
            for i in clients {
                if  person == i.lastName {
                    print("Информация \(i.firstName) \(i.lastName) по сумме погашения \(i.repaymentAmount)\n")
                    print("График погашений по месяцам")
                    print("Остаток ОС | Месяц № | Ежемес.взнос обычн. | Аннуитет платеж.")
                    for j in 0...(period * i.creditPeriod - 1) {
                        
                        p = (i.creditAmount * i.interestRate / Double((period * 100)))
                        p1 = (Double(-i.creditPeriod) * Double(period))
                        p2 = p / (1 - pow(1 + (i.interestRate) / (Double(period) * 100),p1))
                        
                        print("  \(round(i.creditAmount - (i.creditAmount / Double(period  * i.creditPeriod - 1) * Double(j))))  |   \(j + 1)    |       \(round(i.repaymentAmount / Double(period * i.creditPeriod - 1) ))        |    \(round(p2))")
                        
                    }
                }
                
            }
        }
    }


