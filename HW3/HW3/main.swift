//
//  main.swift
//  HW3
//
//  Created by Дмитрий Шмаков on 22.05.2021.
//

//import Foundation


//Задание 1

class MyCar {

    var environmentalFriendliness: Bool
    var manageability: String = ""
    var trafficSafety: Double = 0.0
    var fuelEfficiency:  Double = 0.0
    var motorEngine: Engine
    var carHood: CarHood
    
    enum Engine {
         case small, middle, big
    }
    enum CarHood: String {
        case open = "открыто"
        case close = "закрыто"
    }
        init(manageability:String,trafficSafety: Double,fuelEfficiency:  Double, environmentalFriendliness:Bool, motorEngine: Engine,carHood: CarHood){
    
        self.environmentalFriendliness = environmentalFriendliness
        self.fuelEfficiency = fuelEfficiency
        self.manageability = manageability
        self.trafficSafety = trafficSafety
        self.motorEngine = motorEngine
        self.carHood = carHood
    }
}
func sizeEngine () {
    
}
func carHood() {
    
}

// Задание 2


enum BodyState:String {
case sedan
case truck
}
class TruckCar: MyCar {
    let stateBody: BodyState
    
    
    init(manageability: String, trafficSafety: Double, fuelEfficiency: Double, environmentalFriendliness: Bool, motorEngine: MyCar.Engine, carHood: MyCar.CarHood, stateBody: BodyState) {
        
        self.stateBody = stateBody
        
        
        super.init(manageability: manageability,trafficSafety: trafficSafety,fuelEfficiency:  fuelEfficiency, environmentalFriendliness: environmentalFriendliness, motorEngine: motorEngine,carHood: carHood)
    }
}
     

enum Nitro {
case yes, no
}
class SportCar: MyCar{
    var stateNitro: Nitro
    init(manageability: String, trafficSafety: Double, fuelEfficiency: Double, environmentalFriendliness: Bool, motorEngine: MyCar.Engine, carHood: MyCar.CarHood, stateNitro: Nitro) {
    
        self.stateNitro = stateNitro
        
    super.init(manageability: manageability,trafficSafety: trafficSafety,fuelEfficiency:  fuelEfficiency, environmentalFriendliness: environmentalFriendliness, motorEngine: motorEngine,carHood: carHood)
    

func haveNitro() {
    self.stateNitro = .no
}

}
}

