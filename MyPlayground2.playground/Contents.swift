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


func sumarPares(desde inicio: Int, hasta fin: Int) -> Int{
   var suma = 0
    for i in stride(from:137, to:546, by: 1){
        if i % 2 == 0{
            suma = suma + i
        }
    }
    return suma
}

print (sumarPares (desde: 137, hasta: 546))

let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//Array
var abcedario: [String] //si lo voy a estar cambiando no puede ser let
abcedario = []
abcedario = ["a", "b", "c"]
abcedario.append("d")
abcedario.insert("z", at: 0)
abcedario.count
abcedario.remove(at: 1)
abcedario.index(of: "z")
abcedario.first
abcedario.last
abcedario[0] = "w"
print(abcedario)

//Diccionarioi: hashmap por ej
var numerosDeTelefono: [String: Int]
numerosDeTelefono = [:] //lo inicializamos vacío
numerosDeTelefono["gera"] = 123
numerosDeTelefono["carito"] = 345
print(numerosDeTelefono["gera"])
numerosDeTelefono.count

for i in numerosDeTelefono.values {
    print(i)
}

for (key, value) in numerosDeTelefono {
    print("El valor de la clave \(key) es \(value)") //que lindo esto!!
}


var numerosDeTelefonoExplicito: [String: Int] = ["jose": 123456,
                                                 "maria": 987654]
print(numerosDeTelefonoExplicito["jose"])
print(numerosDeTelefonoExplicito["carlos"])


var nombre = "Carolina"
var segundoNombre: String? //se inicializa directamente con nil, asi que da igual ponerle = nil
var apellido = "Zapata"
segundoNombre = "NoTengoSegundoNombre"
print("-----------")

print(nombre.count)



print(segundoNombre?.count)

//segundoNombre = "noTieneSegundoNombre"
//print(nombre + " " + segundoNombre! + " " + apellido)
print("-----------")

//un valor obtenido del diccionario o de un arreglo siempre es opcional
//nil es el nuevo null

if segundoNombre != nil {
    print (segundoNombre!) //forma incorrecta de desenvolver -unwrap- un opcional
}

print(segundoNombre)

if let elValorDelSegNombre = segundoNombre { // forma correcta de unwrapear la variable opcional
    print(elValorDelSegNombre)
}

numerosDeTelefonoExplicito["mari"]?.advanced(by: 10) //le suma 10 al valor q obtiene del mapa
numerosDeTelefonoExplicito["maria"]?.advanced(by: 10)

var resSuma = numerosDeTelefonoExplicito["mara"]?.advanced(by: 10) ?? 10 // ?? actua como default, si el valor viene en nil le suma 10 igual, en este caso la variable resSuma deja de ser opcional. Ver descripcion con alt+click
var resSuma2 = (numerosDeTelefonoExplicito["maria"] ?? 0).advanced(by: 10) //esto es lo mismo q lo de arriba, con diferente sintaxis















