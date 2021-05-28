
////Задание 1

enum CarHood: String {
        case open = "открыто"
        case close = "закрыто"
}
enum MotorEngine: String {
        case start = "запущен"
        case turnoff = "выключен"
}
    
enum Window {
       case open, Close
}
enum NitroBoost {
       case on, off
}
enum TankCar {
       case huge, middle, little
}


protocol MyCar: AnyObject {
    var manageability: Double {get}
    var fuelEfficiency: Double{get}
    var year: Double{get}
    var hood: CarHood {get set}
    var engine:MotorEngine {get set}
    var stateWindow:Window {get set}

    func egine(getEgine: MotorEngine)
    func hood(getCarHood: CarHood)
    func windows(getWindows: Window)
        
}
extension MyCar {
    func egine(getEdgine: MotorEngine ) {
      engine = getEdgine
    }
    func hood(getCarHood: CarHood) {
        hood = getCarHood
    }

    func stateWindow(getWindows: Window) {
        stateWindow = getWindows
    }
}

class SportCar: MyCar {
    func egine(getEgine: MotorEngine) {
        2
    }
    
    func hood(getCarHood: CarHood) {
        3
    }
    
    func windows(getWindows: Window) {
        4
    }
    
      
    var manageability: Double
    var fuelEfficiency: Double
    var year: Double
    var hood: CarHood
    var engine: MotorEngine
    var stateWindow: Window
    var nintro: NitroBoost
    
    init(manageability: Double, fuelEfficiency: Double, year: Double, hood: CarHood, engine: MotorEngine, stateWindow: Window,nintro: NitroBoost) {
        
        self.manageability = 0.0
        self.fuelEfficiency = 0.0
        self.year = 0.0
        self.hood = .close
        self.engine = .turnoff
        self.stateWindow = .Close
        self.nintro = .off
        
        func boost(getNitro: NitroBoost) {
            self.nintro = getNitro
}


class TunkCar: MyCar {
      
    var manageability: Double
    var fuelEfficiency: Double
    var year: Double
    var hood: CarHood
    var engine: MotorEngine
    var stateWindow: Window
    var tank: TankCar
    init(manageability: Double, fuelEfficiency: Double, year: Double, hood: CarHood, engine: MotorEngine, stateWindow: Window,tank: TankCar) {
        
        self.manageability = 0.0
        self.fuelEfficiency = 0.0
        self.year = 0.0
        self.hood = .close
        self.engine = .turnoff
        self.stateWindow = .Close
        self.tank = .huge
    }
    func egine(getEgine: MotorEngine) {
        4
    }
    
    func hood(getCarHood: CarHood) {
        4
    }
    
    func windows(getWindows: Window) {
        4
    }
    func tank(getTank: TankCar) {
        tank = getTank
    }
}
}
}

extension SportCar {
    var description: String {
        "Управляемость \(manageability), Топливная экономичность \(fuelEfficiency),Год\(year), Копот \(hood), Мотор \(engine), Окна \(stateWindow), Нитро \(nintro)"
    }
}
//
//    extension TunkCar {
//        var description: String {
//            "Управляемость \(manageability), Топливная экономичность \(fuelEfficiency),Год\(year), Копот \(hood), Мотор \(engine), Окна \(stateWindow), Цистерна \(tank)"
//       Не получилось включить расширение на class TunkCar
        
var ca1 = SportCar(manageability: 9, fuelEfficiency: 5, year: 1987, hood: .close, engine: .start, stateWindow: .open, nintro: .on)


