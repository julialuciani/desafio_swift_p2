import UIKit

class Vehicle {
    let name: String!
    let color: String!
    let licensePlate: String!
    
    init(name: String, color: String, licensePlate: String){
        self.name = name
        self.color = color
        self.licensePlate = licensePlate
    }
}

class Celta: Vehicle {}

class GolRebaixado: Vehicle {}

let celta = Celta(name: "Celta", color: "Branco",
                  licensePlate: "AAAAA")

let golRebaixado = GolRebaixado(
    name: "Gol", color: "Branco",
                      licensePlate: "BBBB")

let vehicules: [Vehicle] = [celta, golRebaixado]

enum Rating: String{
    case celta, gol, brazilia
    
    func simpleRating() -> String{
        switch self{
        case .gol:
            return "Belo carro, bem econômico..."
        case .celta:
            return "Melhor ainda se for rebaixado!"
        default:
            return String(self.rawValue)
        }
    }
}


for car in vehicules{
    if (car.name == "Celta"){
        print("É desse que eu quero")
    }else if (car.name == "Gol"){
        print("Os quadrados são os melhores")
    }else {
        print("Desconheço")
    }
}


var favoriteCars = ["Brazilia, UnoQuadrado"]

for car in vehicules{
    favoriteCars.append(car.name)
}

favoriteCars = favoriteCars.sorted()

//let startTime = CFAbsoluteTimeGetCurrent()

//DispatchQueue.global().sync {
//    for car in favoriteCars {
//        print("\(car)")
//    } ; <#code#>
//}
//
//DispatchQueue.global().sync {
//    for vehicule in vehicules {
//        print("\(vehicule.name)") ;  <#body#>
//    }
//}

protocol Person{
    var name: String {get}
    var age: Int{get}
    var canCode: Bool {get}
}

protocol Programmer{
    var linesOfCodePerMinute: Int{get}
    var nightsWithotSleeping: Int{get}
}

struct Julia: Person, Programmer{
    let name: String
    let age: Int
    let nightsWithotSleeping: Int
    let linesOfCodePerMinute: Int
}

extension Person{
    var canCode: Bool{self is Programmer}
}

let julinha = Julia(
name: "Júlia", age: 18,nightsWithotSleeping: 30, linesOfCodePerMinute: 60)

print("Meu nome é \(julinha.name) e eu \(julinha.canCode ? "Sei codar" : "Não sei codar")")
