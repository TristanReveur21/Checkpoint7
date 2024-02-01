//
//  Checkpoint7.swift
//  
//
//  Created by Михаил Медведев on 01.02.2024.
//

import Foundation

//Chekpoint7

//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

//But there’s more:

//1 - The Animal class should have a legs integer property that tracks how many legs the animal has.
//2 - The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
//3 - The Cat class should have a matching speak() method, again with each subclass printing something different.
//4 - The Cat class should have an isTame Boolean property, provided using an initializer.

class Animal {
    var legs = 4
    
    init(legs: Int) {
        self.legs = legs
        print("This animal has \(legs) legs")
    }
}

class Dog: Animal {
    
        func speak() {
            print("Bark! Bark! Bark!")
        }
    }

class Corgi: Dog {
    override func speak() {
        print("Twerk, twerk, twerk!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woof! Woof! Woof!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool){
        self.isTame = isTame
        super.init(legs: legs)
        }
    func speak() {
        print("Meow, meow, meow")
    }
    func tamed () {
        if isTame == true {
          print("This cat can be tamed")
        } else {
           print("This cat can't be tamed")
        }
    }
}

class Persian: Cat {
  
    override func speak() {
        print("Meooow, meeoow, meeooooow")
    }
    
}

class Lion: Cat {
    override func speak() {
        print("Raaaarr! Raaaaarr! Raaaar!")
    }
}

var grusha = Poodle(legs: 4)
grusha.speak()
var garfield = Persian(legs: 4, isTame: true)
garfield.speak()
garfield.tamed()
var king = Lion(legs: 4, isTame: false)
king.speak()
king.tamed()
