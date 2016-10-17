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
    
    func equip(item: Item) {
        if let toEquip = item as? Armour{
            switch toEquip.armourSlot {
            case ArmourSlot.Head:
                self.head = toEquip
                moveInvToPlayer(item)
                break
            case ArmourSlot.Chest:
                self.chest = toEquip
                moveInvToPlayer(item)
                break
            case ArmourSlot.Arms:
                self.arms = toEquip
                moveInvToPlayer(item)
                break
            case ArmourSlot.Legs:
                self.legs = toEquip
                moveInvToPlayer(item)
                break
            }
        } else if let toEquip = item as? Weapon{
            self.weapon = toEquip
            moveInvToPlayer(item)
        }
    }
    
    func moveInvToPlayer(item: Item) {
        let index = inventory.items.indexOf(item)
        inventory.items.removeAtIndex(index!)
    }
}