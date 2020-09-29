//
//  main.swift
//  MacDoSwiftSyntaxeDemo
//
//  Created by Service Informatique on 29/09/2020.
//  Copyright © 2020 MDS. All rights reserved.
//

import Foundation

var yo: Int = 10
print("coucou \(yo) ")
print("coucou" + String(yo))

// var = variable
var 🐙: String = "Je suis un poulpe"
print(🐙)

var msv = yo > 9 ? 0 : 10
print(msv)

// let = constante
let const: String = "coucou"

if yo == 0 {
    print("yo = 0")
} else {
    print(yo)
}

switch yo {
case 0:
    msv = 5
    break
case 1:
    msv = 5
    break
default:
    msv = 7
    break
}

// 0...10 = une range (10 inclus)
for i in 0 ... 10 {
    print("index \(i)")
}

// 10 exclus
for i in 0 ..< 10 {
    print("index \(i)")
}

// _ si pas d'utilité de i
for _ in 0 ... 10 {
    print("coucou")
}

while yo >= 8 {
    print("INFINITY LOOP")
    yo -= 1
}

// équivalent do while
repeat {
    print("INFINITY LOOP")
    yo -= 1
} while yo >= 8


// nomage de boucle
outerLoop : for i in 0 ..< 10 {
    middleLoop : for j in 0 ..< 10 {
        innerLoop : for u in 0 ..< 10 {
            //break = exit loop
            //continue = passe à l'itération suivante sans executer la suite du code
            if u >= 4 {
                continue middleLoop
            } else if j == 8 {
                continue outerLoop
            } else
            {
                break innerLoop
            }
        }
    }
}


//////////////////// FONCTIONS

func myFunction() {
    print("THIS IS MY FUNCTION")
}

func myFunction10() -> Int {
    return 10
}

myFunction()
let result = myFunction10()

func mult(first: Double, second: Double) -> Double {
    return first * second
}

// force le nom du parametre
let res = mult(first: 10.5, second: 2.8)
print(res)

// nom inter & nom externe
// dans se cas, this et with sont les nom de variable externer à la fonction & first et second les nom interne à la methode
func mult2(this first: Double, with second: Double) -> Double {
    return first * second
}

let res2 = mult2(this: 10.5, with: 2.8)
print(res2)

// _ pour retirer le nom externe
func mult3(_ first: Double, _ second: Double) -> Double {
    return first * second
}

let res3 = mult3(10.5, 2.8)
print(res3)


