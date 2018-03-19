//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func s() -> String {
    return "zhiller"
}

func saludar(a nombre: String? = nil, _ apellido: String = s()) {
    //en apellido le toy pasando por parametro otra funcion
    print(nombre ?? "nil")
    print(apellido)
}

saludar(a: "caro")
print("----------")
saludar()


//clases:

public class Persona: Equatable{
    
    private var nombre: String
    private var apellido: String
    //los podemos poner opcionales con ? para q sean nil y no poner constructor pero no es lo ideal
    
    init(nombre: String = "user", apellido: String = "lastname"){
        self.nombre = nombre
        self.apellido = apellido
    }
    
    public func presentarse() -> String {
        return "Mi nombre es \(nombre) \(apellido)"
    }
    
    public func getNombre() -> String {
        return nombre
    }
    
    public static func ==(lhs: Persona, rhs: Persona) -> Bool {
        return lhs.nombre == rhs.nombre
    }
}

var p: Persona = Persona(nombre: "Caro", apellido: "Zapata")
print(p.presentarse())

var p2: Persona = Persona()
print(p2.presentarse())

public class PersonaFisica: Persona {
    
    override public func presentarse() -> String {
        return "SOY PERSONA FISICA"
    }
}

public class PersonaJuridica: Persona {
    override init(nombre: String, apellido: String) {
        super.init(nombre: "Juridica \(nombre)")
    }
    override public func presentarse() -> String {
        return "SOY PERSONA JURIDICA"
    }
}

var pF = PersonaFisica(nombre: "Juan", apellido: "Perez")
print(pF.presentarse())

print(PersonaJuridica(nombre: "Juan", apellido: "Perez").presentarse())

print("-------")

var padron: [Persona] = [PersonaFisica(nombre: "Carito", apellido:"ZHILLER"),
                        PersonaJuridica(nombre: "Cocacola", apellido:"COMPANY")]
for p in padron {
    print(p.presentarse())
    print(p.getNombre())
}

//interfaces:

public protocol Volador {
    func volar()
    func volarEnReversa()
}

public class Superheroe: Persona, Volador{
    //siempre va la herencia primero, interfaces despues
    
    public func volar() {
        print("Estoy volando")
    }
    
    public func volarEnReversa() {
        print("odnalov yotsE")
    }
    
    
}

var clark = Superheroe(nombre: "Clark", apellido: "Kent")
print(clark.presentarse())

clark.volar()
clark.volarEnReversa()

var bruno = Superheroe(nombre: "Batman", apellido: "meh")

if bruno != clark {
    print("son diferentes")
}










