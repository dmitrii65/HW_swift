import UIKit

enum AnatomyAutomobile:String {
    case sedan = "седан"
    case coupe = "купе"
    case hatchBack = "хетчбек"
}


class MyCar {
    var typeCar: AnatomyAutomobile
    var yearOfIssue: Double
    var color: String
 
    init(typeCar: AnatomyAutomobile, yearOfIssue: Double, color: String) {
        self.typeCar = typeCar
        self.yearOfIssue = yearOfIssue
        self.color = color
           
}
}
struct Queue <Data> {
   private var queue: [Data] = []
   mutating func push(_ element: Data){
        queue.append(element)
    }

    mutating func pop() -> Data {
        return queue.removeFirst()
    
}
 
    func  filter(prime: (Data) -> Bool) -> [Data]{
        var wasteArray: [Data] = []
        for item in queue {
            if prime(item) {
                wasteArray.append(item)
            }
        }
    return wasteArray
    }
    }
var check = Queue<MyCar>()
//check.push(MyCar(typeCar: .coupe, yearOfIssue: 2021, color: "white")
//check.push(MyCar(typeCar: .hatchBack, yearOfIssue: 2020, color: "green")))
//не могу понять почему ошибка при проверки
