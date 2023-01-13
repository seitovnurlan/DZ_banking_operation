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

var person1 = Customer(firstName: "Ivan", lastName: "Ivanov", middleName: "Ivanovich", creditAmount: 50000.0, creditPeriod: 12, repaymentAmount: 0.0)
var person2 = Customer(firstName: "Peter", lastName: "Petrov", middleName: "Petrovich", creditAmount: 100000.0, creditPeriod: 12, repaymentAmount: 0.0)

var bank = Bank()

bank.customers.append(person1)
bank.customers.append(person2)

for i in bank.customers {
    i.showInfo()
}

bank.calculate_loan(period: 36, sum: 100000.0)
