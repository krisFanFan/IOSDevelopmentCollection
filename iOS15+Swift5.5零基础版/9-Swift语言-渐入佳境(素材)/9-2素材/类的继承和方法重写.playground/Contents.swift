import UIKit

//继承inherit
//父类/基类super class
class Animal{
    func breathe(){
        print("在空气呼吸")
    }
}
//子类subclass(相对于Person是父类)
class Mammal: Animal{
    var hasHair = true
}

let mammal = Mammal()
mammal.breathe()
mammal.hasHair
//子类subclass
class Person: Mammal{
    func useComputer(){
        
    }
}
let person = Person()
person.breathe()
person.hasHair
person.useComputer()


//重写override
//重写父类方法:先调用父类方法获取父类所有功能,再写自己的功能
class Fish: Animal{
    override func breathe() {
        super.breathe()
        print("在水中呼吸")
    }
}
let fish = Fish()
fish.breathe()


