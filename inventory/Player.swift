class Player {
    var health: Int
    var defense: Int
    var attack: Int
    var inventory = Inventory(capacity: 100, amountFilled:0)
    
    //Armour/Weapon slots
    var head: Item?
    var chest: Item?
    var arms: Item?
    var legs: Item?
    var weapon: Item?
    
    init(){
        self.health = 100
        self.defense = 0
        self.attack = 0
    }
    
    func unequip(item: Item) {
        if let toUnequip = item as? Armour{
            switch toUnequip.armourSlot {
            case ArmourSlot.Head:
                self.head = nil
                defense -= toUnequip.defense
                moveFromPlayerToInv(item)
                break
            case ArmourSlot.Chest:
                self.chest = nil
                defense -= toUnequip.defense
                moveFromPlayerToInv(item)
                break
            case ArmourSlot.Arms:
                self.arms = nil
                defense -= toUnequip.defense
                moveFromPlayerToInv(item)
                break
            case ArmourSlot.Legs:
                self.legs = nil
                defense -= toUnequip.defense
                moveFromPlayerToInv(item)
                break
            }
        } else if let toUnequip = item as? Weapon{
            self.weapon = nil
            attack -= toUnequip.attack
            moveFromPlayerToInv(item)
        }
    }
    
    func equip(item: Item) {
        if let toEquip = item as? Armour{
            switch toEquip.armourSlot {
            case ArmourSlot.Head:
                self.head = toEquip
                defense += toEquip.defense
                moveFromInvToPlayer(item)
                break
            case ArmourSlot.Chest:
                self.chest = toEquip
                defense += toEquip.defense
                moveFromInvToPlayer(item)
                break
            case ArmourSlot.Arms:
                self.arms = toEquip
                defense += toEquip.defense
                moveFromInvToPlayer(item)
                break
            case ArmourSlot.Legs:
                self.legs = toEquip
                defense += toEquip.defense
                moveFromInvToPlayer(item)
                break
            }
        } else if let toEquip = item as? Weapon{
            self.weapon = toEquip
            attack += toEquip.attack
            moveFromInvToPlayer(item)
        }
    }
    
    func moveFromInvToPlayer(item: Item) {
        if let index = inventory.items.indexOf(item){
            inventory.amountFilled -= inventory.items[index].weight!
            inventory.items.removeAtIndex(index)
        }
    }
    
    func moveFromPlayerToInv(item: Item) {
        inventory.addItem(item)
    }
}