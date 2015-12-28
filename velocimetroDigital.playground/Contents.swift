//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init() {
        self = .Apagado
    }
}
class Auto {
    var velocidad = Velocidades()
    
    init(velocidad: Velocidades) {
        self.velocidad = velocidad
    }
    
    func  cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        var posicion: Int = velocidad.hashValue + 1
        
        return (velocidad.rawValue, String(stringInterpolationSegment: velocidad))
    }
}

var auto = Auto(velocidad: .velocidadBaja)

for var i=1; i<=20;i++ {
    print(auto.cambioDeVelocidad())
}

