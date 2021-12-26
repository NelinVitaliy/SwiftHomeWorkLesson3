//
//  main.swift
//  SwiftHomeWorkLesson3
//
//  Created by N3L1N on 23/12/2021.
//

import Foundation

enum Engine:String {
    case on = "Started"
    case off = "Stopped"
}

enum actionEngine {
    case start
    case turnOff
}

enum Windows:String {
    case open = "Open"
    case close = "Close"
}

enum  autoBody {
    case emptyBody(empty:String)
    case fullBody(full:String)
    case volumeBody(kg:Double)
}

struct sportCar {
    var brand : String
    var yearOfRelease : Int
    var volumeAutoBody : autoBody
    var engine : Engine
    var windows : Windows
    var volumeFullTrunk : Double
    
    mutating func actionEngine(action:Engine){
        switch action {
        case .off:
            print(action.rawValue)
            self.engine = .off
        case .on:
            print(action.rawValue)
            self.engine = .on
        }
    }
    
    func description(){
        print("Car\(brand), \(yearOfRelease) year of release. Right now engine \(engine.rawValue). Auto Body Volume \(volumeAutoBody).")
    }
}


struct truckCar {
    var brand : String
    var yearOfRelease : Int
    var volumeAutoBody : autoBody
    var engine : Engine
    var windows : Windows
    var volumeFullTrunk : Double
    
    mutating func actionEngine(action:Engine){
        switch action {
        case .off:
            print(action.rawValue)
            self.engine = .off
        case .on:
            print(action.rawValue)
            self.engine = .on
        }
}
    
    func printEngine(){
        print(engine.rawValue)
    }
    
    func description(){
        print("Car\(brand), \(yearOfRelease) year of release. Right now engine     \(engine.rawValue). Trunk Volume \(volumeAutoBody).")
    }
}


var carFerrari = sportCar(brand: "Ferrari", yearOfRelease: 2008, volumeAutoBody: .emptyBody(empty: "Body empty"), engine: .on, windows: .close, volumeFullTrunk: 52.5)
    
var carMasserati = sportCar(brand: "Masserati", yearOfRelease: 2016, volumeAutoBody: .volumeBody(kg: 120.5), engine: .off, windows: .open, volumeFullTrunk: 48.7)
    
var carMan = truckCar(brand: "Man", yearOfRelease: 2012, volumeAutoBody: .fullBody(full: "Trank full"), engine: .on, windows: .open, volumeFullTrunk: 600.0)

var carVolvo = truckCar(brand: "Volvo", yearOfRelease: 2020, volumeAutoBody: .volumeBody(kg: 456.8), engine: .off, windows: .close, volumeFullTrunk: 550.0)



print(carFerrari.brand)
print(carFerrari.volumeAutoBody)
print(carFerrari.yearOfRelease)
carFerrari.description()
print("_________________________________")

print(carMasserati.brand)
print(carMasserati.yearOfRelease)
carMasserati.actionEngine(action: .on)
carMasserati.actionEngine(action: .off)
carMasserati.description()
print("_________________________________")

print(carMan.brand)
print(carMan.yearOfRelease)
print(carMan.windows)
print(carMan.engine)
carMan.description()
print("_________________________________")

print(carVolvo.brand)
print(carVolvo.yearOfRelease)
print(carVolvo.volumeAutoBody)
print(carVolvo.engine)
print(carVolvo.actionEngine(action:.on))
carVolvo.description()
print("_________________________________")
