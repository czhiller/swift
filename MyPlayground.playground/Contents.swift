//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

var num = 7
var num2 = Double(num)

var resultado = num2 + 3.5

let constante: Int

constante = 123

var condicion: Bool = 7 != 5

if condicion {
    print("verdadero")
} else {
    print("false")
}

//var contador = 10
//
//while contador > 0 {
//    print(contador)
//    contador = contador - 1
//}
//
//contador = 0
//
//repeat {
//    print(contador)
//    contador = contador - 1
//} while contador > 0

let numeros = [1,2,3,4,5,6,7,8,9,10]
for miNum in numeros {
    print(miNum)
}

var numerosDel1Al10 = 1...10 //inclusive
var numerosDel1Al9 = 1..<10 //exclusive

for i in 1...10 {
    print(("mira operaciones \(i * 2 + 5 / 3)"))
}

for j in stride(from: 1, to: 10, by:2 ){
    print("que cool esto \(j)")
}






