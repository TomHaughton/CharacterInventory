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
        if let toEquip = item as? Armour{
            switch toEquip.armourSlot {
            case ArmourSlot.Head:
                self.head = nil
                moveFromPlayerToInv(item)
                break
            case ArmourSlot.Chest:
                self.chest = nil
                moveFromPlayerToInv(item)
                break
            case ArmourSlot.Arms:
                self.arms = nil
                moveFromPlayerToInv(item)
                break
            case ArmourSlot.Legs:
                self.legs = nil
                moveFromPlayerToInv(item)
                break
            }
        } else if let toEquip = item as? Weapon{
            self.weapon = nil
            moveFromPlayerToInv(item)
        }
    }
    
    func equip(item: Item) {
        if let toEquip = item as? Armour{
            switch toEquip.armourSlot {
            case ArmourSlot.Head:
                self.head = toEquip
                moveFromInvToPlayer(item)
                break
            case ArmourSlot.Chest:
                self.chest = toEquip
                moveFromInvToPlayer(item)
                break
            case ArmourSlot.Arms:
                self.arms = toEquip
                moveFromInvToPlayer(item)
                break
            case ArmourSlot.Legs:
                self.legs = toEquip
                moveFromInvToPlayer(item)
                break
            }
        } else if let toEquip = item as? Weapon{
            self.weapon = toEquip
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