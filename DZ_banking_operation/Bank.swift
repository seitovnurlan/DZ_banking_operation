//  Bank.swift

import Foundation

class Bank {
    var clients:[Customer] = [Customer] ()
    
    func countCredit() {
        for i in clients {
            if i.creditPeriod == 1 {
                i.repaymentAmount += (i.creditAmount * (0.3) + i.creditAmount)
            }
            if i.creditPeriod == 2 {
                i.repaymentAmount += (i.creditAmount * (0.15) + i.creditAmount)
            }
            if i.creditPeriod == 3 {
                i.repaymentAmount += (i.creditAmount * (0.10) + i.creditAmount)
            }
           // i.creditAmount += summaCredita
           // i.creditPeriod += srokCredita
            //showInfo()
            print("ФИО заемщика: \(i.firstName) \(i.lastName) \(i.middleName) сумма кредита - \(i.creditAmount)\n срок кредита \(i.creditPeriod) год(а) \n сумма погашения - \(i.repaymentAmount) \n")
        }
        
    }
//    func listOfClient() {
//        for i in clients {
//            print("\(i.firstName), \(i.lastName), \(i.middleName), \(i.creditAmount), \(i.creditPeriod), \(i.repaymentAmount)")
//        }
//    }
    
        func print_graph(_ person: String) {
            let period = 12
            for i in clients {
                if  person == i.lastName {
                    print("Информация \(i.firstName) \(i.lastName) по сумме погашения \(i.repaymentAmount)\n")
                    print("График погашений по месяцам")
                    print("Остаток ОС | Месяц № | Ежемесячный взнос")
                    for j in 0...(period * i.creditPeriod - 1) {
                        print("  \(round(i.creditAmount - (i.creditAmount / Double(period  * i.creditPeriod - 1) * Double(j))))  |   \(j + 1)    |       \(round(i.repaymentAmount / Double(period * i.creditPeriod - 1) ))")
                    }
                }
                
            }
        }
    }


