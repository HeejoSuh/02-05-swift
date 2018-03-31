
//
//  Main.swift
//
//  Creates vehicles
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//			swiftc Main.swift


import Foundation

public class Vehicle {
	//This is the class definition for a vehicle

	//--------------------------------------------------------	
	private enum NewError : Error {
    	case UnavailablePlateException(String)
	}

	//--------------------------------------------------------		
	
	var _licensePlate: String
	var _colour: String
	var _numberOfDoors: Int = 4
	//start at rest, always have speed limit
	var _speed: Int = 0 
	var _maximumSpeed: Int = 300
	
	//--------------------------------------------------------	
	//--------------------------------------------------------	
	
	//public init() throws {
		//Default Constructor for vehicle class
		//self(_licensePlate: "ABCD123", _colour:"White")
	//}
	public init(licensePlate: String, colour: String) throws {
		//Default Constructor for vehicle class
		//try setLicensePlate(newPlate: licensePlate)
		//setColour(newColour: colour)
		
		//if licensePlate.count == 7 {
			_licensePlate = licensePlate
		//} else {
			//throw NewError.UnavailablePlateException("License is invalid length")
		//}
		_colour = colour;
	}
	
	//--------------------------------------------------------	
	
	
	
	//--------------------------------------------------------	
	//func matches(_ regex: String) -> Bool {
       // return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    //}

	//if str.matches("^[a-zA-Z0-9._-]{1,30}$") {
  	  //...
	//}
	
	
	
	//--------------------------------------------------------	
	//getter
	//-------------//LICENSE PLATE
	func getLicensePlate() -> String {
		//return plate
		return _licensePlate
	}
	
	//-------------//COLOUR
	func getColour() -> String {
		//return colour
		return _colour
	}
	
	//-------------//# OF DOORS
	func getNumberOfDoors() -> Int {
		//return doors
		return _numberOfDoors
	}
	
	//-------------//SPEED
	func getSpeed() -> Int {
		//return speed
		return _speed
	}
	
	//-------------//INFO
	func getInfo() -> String {
		//return info
		return "License plate:\(_licensePlate) \nColour:\(_colour) \nNumber of doors:\(_numberOfDoors) \nSpeed:\(_speed)km/h"
		
	}
	
	
	
	//--------------------------------------------------------	
	//setter
	
	//-------------//LICENSE PLATE
	func setLicensePlate(newPlate: String) throws {
		//set plate
		
		//if (newPlate.count == 7) && (filterPlate(input: newPlate) == "") {
			_licensePlate = newPlate
		//} else {
			//throw NewError.UnavailablePlateException("Invalid License")
		//}
	}	
	//-------------//COLOUR
	func setColour(newColour: String){
		//set colour
		_colour = newColour
	}
	
	//-------------//# OF DOORS
	func setNumberOfDoors(doorCount: Int){
		//set doors
		_numberOfDoors = doorCount
	}
	
	//----------------------- ACCELERATE
	func Accelerate(accelerateAmount: Int){
		//Accelerate the speed by input
		if (_speed + accelerateAmount) <= _maximumSpeed {
			//if not over max limit
			_speed = _speed + accelerateAmount
		} else {
			//set it to max
			_speed = _maximumSpeed
		}
	}
	
	//----------------------- BREAK
	func Decelerate(decelerateAmount: Int){
		//Accelerate the speed by input
		if (_speed - decelerateAmount) >= 0 {
			//if not negative
			_speed = _speed - decelerateAmount
		} else {
			//set it to 0
			_speed = 0
		}
	}
	
}




//vehicle 1
print("Vehicle 1")
////Instantiate the vehicle
let vehicle1: Vehicle = try Vehicle(licensePlate: "E1F2G3H", colour: "Red")
print("Speed: \(vehicle1.getSpeed())")
vehicle1.Accelerate(accelerateAmount: 1)
print("Speed: \(vehicle1.getSpeed())")
vehicle1.Accelerate(accelerateAmount: 5)
print("Speed: \(vehicle1.getSpeed())")
vehicle1.Decelerate(decelerateAmount: 500)
print("Speed: \(vehicle1.getSpeed())")

//vehicle 2
print("\nVehicle 2")
let vehicle2: Vehicle = try Vehicle(licensePlate: "POI0987", colour: "Black")
print("License Plate: \(vehicle2.getLicensePlate())")
//set license plate
try vehicle2.setLicensePlate(newPlate: "3F4G5H6")
print("License Plate: \(vehicle2.getLicensePlate())")
//set colour
vehicle2.setColour(newColour: "Yellow")
print("Colour: \(vehicle2.getColour())")

