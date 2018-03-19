//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var suma = 0
for i in stride(from:137, to:546, by: 1){
    if i % 2 == 0{
        suma = suma + i
    }
}
print (suma)


//swiftLint: formatea el codigo


func saludar(a nombre: String, _ empresa: String) -> Void{ //Void puede ponerse o no, es implicito
    print("Bienvenue \(nombre) de \(empresa) a DH")
}

saludar(a: "Caro", "Accenture") //usar labels para que parezca lenguaje natural, ahora las variables son internas a la funcion!!
// si le pongo _ no paso ni nombre ni etiqueta

func encontrarMax(entre a: Int, y b: Int) -> Int{
//    if a > b {
//        return a
//    } else {
//        return b
//    }
    return (a > b ? a : b)
}

var resultado = encontrarMax(entre: 78, y: -78)
print(resultado)


func sumar(desde inicio: Int, hasta fin: Int) -> Int{
   var suma = 0
    for i in stride(from:137, to:546, by: 1){
        if i % 2 == 0{
            suma = suma + i
        }
    }
    return suma
}

print (sumar (desde: 137, hasta: 546))
