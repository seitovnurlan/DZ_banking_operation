//  Bank.swift

import Foundation

class Bank {
    var customers = [Customer]()
    init(customers: [Customer] = [Customer]()) {
        self.customers = customers
    }
//    func calculate_loan(period: Int, sum: Double) -> Double {
//        var s: Double = 0.0
//        if period == 12 {
//            s = sum + sum * 0.30
//        } else
//            if period == 24 {
//                s = sum + sum * 0.15
//            } else if period == 36 {
//                s = sum + sum * 0.10
//            }
//        print(s)
//        Customer.repaymentAmount = s
//        return s
    
    func calculate_loan(period: Int, sum: Double) {
        var s: Double = 0.0
        if period == 12 {
            s = sum + sum * 0.30
        } else
            if period == 24 {
                s = sum + sum * 0.15
            } else if period == 36 {
                s = sum + sum * 0.10
            }
        print(s)
        //customers.repaymentAmount = s
    
    }
    func print_graph(){
        
    }
}
