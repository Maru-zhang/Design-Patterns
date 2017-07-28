import UIKit

protocol WeaponBehaviour {
    func useWeapon()
}

struct KnifeBehaviour: WeaponBehaviour {

    func useWeapon() {
        print(String(describing: self))
    }
}

struct BowAndArrowBehaviour: WeaponBehaviour {

    func useWeapon() {
        print(String(describing: self))
    }
}

struct AxeBehaviour: WeaponBehaviour {

    func useWeapon() {
        print(String(describing: self))
    }
}

struct SwordBehaviour: WeaponBehaviour {

    func useWeapon() {
        print(String(describing: self))
    }
}

protocol Character {
    var weapon: WeaponBehaviour? { get set }
    func fight()
    mutating func fetch(stuff: WeaponBehaviour)
}

extension Character {

    func fight() {
        weapon?.useWeapon()
    }

    mutating func fetch(stuff: WeaponBehaviour) {
        self.weapon = stuff
    }
}

class Queen: Character {
    var weapon: WeaponBehaviour? = KnifeBehaviour()
}

class Troll: Character {
    var weapon: WeaponBehaviour? = AxeBehaviour()
}

class Knight: Character {
    var weapon: WeaponBehaviour? = SwordBehaviour()
}

class King: Character {
    var weapon: WeaponBehaviour? = BowAndArrowBehaviour()
}

var queue = Queen()
var king = King()
var troll = Troll()
var knight = Knight()

queue.fight()
king.fight()
troll.fight()
knight.fight()

knight.fetch(stuff: AxeBehaviour())

knight.fight()
