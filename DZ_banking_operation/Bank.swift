//  Bank.swift

import Foundation

//class Bank {
//    var customers = [Customer]()
//
////    func calculate_loan(period: Int, sum: Double) -> Double {
////        var s: Double = 0.0
////        if period == 12 {
////            s = sum + sum * 0.30
////        } else
////            if period == 24 {
////                s = sum + sum * 0.15
////            } else if period == 36 {
////                s = sum + sum * 0.10
////            }
////        print(s)
////        Customer.repaymentAmount = s
////        return s
//    
//    func calculate_loan(period: Int, sum: Double) {
//        var s: Double = 0.0
//        if period == 12 {
//            s = sum + sum * 0.30
//        } else
//            if period == 24 {
//                s = sum + sum * 0.15
//            } else if period == 36 {
//                s = sum + sum * 0.10
//            }
//        print("Информация по сумме погашения \(s)")
//        //customers.repaymentAmount = s
//    
//    }
//    func print_graph(name: Customer){
//        var s: Double = 0.0
//        print("Информация по сумме погашения \(Customer.repaymentAmount)")
//        
//            for item in count
//            print("")
//    
//            }
//        print(s)
//    }
//}


















class Bank1 {
    var clients:[Customer] = [Customer] ()
    func countCredit(summaCredita:Double, srokCredita:Int, summaPogashenie:Double) {
        for i in clients {
            if srokCredita == 1 {
                i.repaymentAmount += (summaPogashenie * (0.3) + summaPogashenie)
            }
            if srokCredita == 2 {
                i.repaymentAmount += (summaPogashenie * (0.15) + summaPogashenie)
            }
            if srokCredita == 3 {
                i.repaymentAmount += (summaPogashenie * (0.10) + summaPogashenie)
            }
            i.creditAmount += summaCredita
            i.creditPeriod += srokCredita
            print(" сумма кредита - \(i.creditAmount)\n срок кредита \(i.creditPeriod)\n сумма погашения - \(i.repaymentAmount) \n")
        }
        
    }
    func client(person:Customer, pogashenie:Int) {
        for i in clients {
            print("\(i.firstName), \(i.lastName), \(i.middleName), \(i.creditAmount), \(i.creditPeriod), \(i.repaymentAmount)")
            
        }
    }
    
        func print_graph(person:Customer, srok: Int) {
            // print("Информация по сумме погашения \(repaymentAmount)")
            for i in clients {
                if srok == 1 {
                    for item in 0...11 {
                        print("Сумма кредита \(i.creditAmount), срок кредита \(i.creditPeriod), сумма погашения \(i.repaymentAmount / 12 )")
                    }
                }
                if srok == 2 {
                    for item in 0...23 {
                                            print("Сумма кредита \(i.creditAmount), срок кредита \(i.creditPeriod), сумма погашения \(i.repaymentAmount / 24)")
                    }
                }
                if srok == 3 {
                    for item in 0...35 {
                                            print("Сумма кредита \(i.creditAmount), срок кредита \(i.creditPeriod), сумма погашения \(i.repaymentAmount / 36 )")
                    }
                }
                
            }
        }
    }


