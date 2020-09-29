import Foundation

print("Hello, World!")

// Optional (can be nil) & Non-Optional (can't be nil) !!! nil équivalent null
// une variable est par défaut Non-Optional (rajouter ? sur le type pour le rendre optionel)
var myVar : Int?// Optional
print(myVar)

if myVar == nil {
    print("myVar est null (nil)")
} else {
    //
    let myNonOptionalValue: Int = myVar! // ont rajoute ! pour convertir un optionel en non optionel (unwrapped implicit)
    print(myNonOptionalValue)
}




// Optional binding (convertion optional en nonOptional)
if let myNonOptionalValue = myVar {
    print("myNonOptionalValue contains the value of myVar")
    print(myNonOptionalValue)
} else {
    print("myVar contains nil")
}


// crée une instance de classe
let myAndroidPhone = AndroidPhone(name: "Xiaomi 9T Pro", price: 399.99, brand: "Xiaomi")
print(myAndroidPhone.description)


let myAndroidNilPhone: AndroidPhone? = nil

print(myAndroidNilPhone?.description)
//print(myAndroidNilPhone!.description) // CRASH !!!!!


/*
 ValueType / refType
 Structure ! Object
 Cpy value ! Cpy ref
 */

var myInt: Int = 10
var mySecondInt = myInt
mySecondInt = 0
// what is the value of myInt ?
//print(myInt)

var newAP = AndroidPhone(name: "S7", price: 2.2, brand: "yolo")
var sAP = newAP
sAP.name = "S6"
// What is the value of newAP.name
//print(newAP.name)

var pixel = AndroidPhone(name: "pixel 4", price: 100.0, brand: "Google")
func changeMyPhoneNAme(phone: AndroidPhone) {
    phone.name = "NewName"
}

print(pixel.name)
changeMyPhoneNAme(phone: pixel)
print(pixel)

var i = 20.0
func changeMyDouble(value: Double) {
    // transphorme value en let (le rend inmodifiable)
    //value = 10.0
}

var myString = "red"
myString.printWithLove()


var myIntArray: [Int] = [Int]()
myIntArray.append(5)
myIntArray.append(10)
myIntArray.append(15)

print(myIntArray)
print(myIntArray[0])
print(myIntArray[myIntArray.count - 1])

for i in myIntArray {
    print(i)
}

for i in stride(from: myIntArray.count - 1, to: 0, by: -1) {
    print(i)
}

var my2Dim: [[Int]] = [
    [1,2,3],
    [4,5,6],
    [7,8,9]]

for u in my2Dim {
    for v in u {
        print("\(v) ", terminator: "")
    }
    print("")
}

var myIntArray2: [Any] = []

//Dicotionaire
var myDictonary: [String : Double] = [:]
myDictonary["iPhone SE"] = 489.99
myDictonary["iPhone S12"] = 2489.99
myDictonary["Xiaomi"] = 389.99

for (key,value) in myDictonary {
    print("key = \(key) - value = \(value)")
}


