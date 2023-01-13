//  Created by Nurlan Seitov on 13/1/23.
// Домашнее задание №1.

//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0.
//
//Создать класс Банк с параметрами клиенты.
//
//Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами.
//Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%.
//Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента.
//Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.

import Foundation

//var person1 = Customer(firstName: "Ivan", lastName: "Ivanov", middleName: "Ivanovich", creditAmount: 50000.0, creditPeriod: 12, repaymentAmount: 0.0)
//var person2 = Customer(firstName: "Peter", lastName: "Petrov", middleName: "Petrovich", creditAmount: 100000.0, creditPeriod: 12, repaymentAmount: 0.0)
//
//var bank = Bank1()
//
//bank.customers.append(person1)
//bank.customers.append(person2)
//
//for i in bank.customers {
//    i.showInfo()
//}
//
//bank.calculate_loan(period: 36, sum: 100000.0)
var person = Customer(firstName: "Sadf", lastName: "sdf", middleName: "dsf", creditAmount: 0.0, creditPeriod: 0, repaymentAmount: 0.0)
var bank = Bank1()
bank.clients.append(person)
bank.client(person: person, pogashenie: 1000)
bank.countCredit(summaCredita: 1000.0, srokCredita: 2, summaPogashenie: 1000.0)

bank.print_graph(person: person, srok: 2)
func plus() {
    
}
//func plus1(sad:Int) {
//    
//}
//var name = "sdfs"
//func plus2(dsad:Int) -> String {
//    if dsad == 100 {
//        return name 
//        }
//    }
//}
