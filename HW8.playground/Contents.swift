import UIKit
//Блин я 3 дня бился со змекой можешь написать как надо сделать, как  понял нужно  создать метод restart   и его прописать в swich case
//
//Задание № 3 не успел
enum CarHood: String {
    case open = "открыто"
    case close = "закрыто"
}
enum MotorEngine: String {
    case start = "запущен"
    case turnoff = "выключен"
}

enum Window {
    case open
    case close
}
enum NitroBoost {
    case on
    case off
}
enum Tank {
    case huge
    case middle
    case little
}

struct SportCar {
    let mark: String
    let year: Int
    var hood: CarHood
    var carWindow: Window
    var boost: NitroBoost
    var engine: MotorEngine
    
    init(mark: String,year: Int,hood: CarHood,carWindow: Window,boost: NitroBoost,engine: MotorEngine){
        self.mark = "rav4"
        self.year = 2001
        self.hood = .close
        self.carWindow = .close
        self.boost = .off
        self.engine = .turnoff
    }
    
    mutating func printInformation() {
        print("Марка: \(self.mark)")
        print("Год: \(self.year)")
        print("Ускорение: \(self.boost == .off ? "есть" : "нет")")
    }
}

var car = SportCar(mark: "rav4", year:300, hood: .close, carWindow: .open, boost: .off, engine: .start)
car.printInformation()


// Задание 7 пока не разобрался с  error  и throws-функций
