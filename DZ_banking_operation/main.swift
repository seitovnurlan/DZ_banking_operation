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

var person1 = Customer(firstName: "Иван", lastName: "Иванов", middleName: "Иванович", creditAmount: 10000.0, creditPeriod: 1, repaymentAmount: 0.0, interestRate: 0)
var person2 = Customer(firstName: "Петр", lastName: "Петров", middleName: "Петрович", creditAmount: 50000.0, creditPeriod: 2, repaymentAmount: 0.0, interestRate: 0)
var person3 = Customer(firstName: "Сергей", lastName: "Сидоров", middleName: "Сидорович", creditAmount: 100000.0, creditPeriod: 3, repaymentAmount: 0.0, interestRate: 0)
var person4 = Customer(firstName: "Владимир", lastName: "Путин", middleName: "Владимирович", creditAmount: 260000.0, creditPeriod: 5, repaymentAmount: 0.0, interestRate: 0)

var bank = Bank()
bank.clients.append(person1)
bank.clients.append(person2)
bank.clients.append(person3)
bank.clients.append(person4)

//bank.listOfClient() // Выводить список клиентов

bank.countCredit() // Функцию, рассчитывающая сумму кредита с процентами

//bank.print_graph("Иванов")
//bank.print_graph("Петров")
//bank.print_graph("Сидоров")
bank.print_graph("Путин")
