import Foundation

var player = Player()
var sword = Weapon(name: "Billy's blade", weight: 15, damage: 30, weaponType: WeaponType.Sword)
var armour = Armour(name: "Honky's Helm", weight: 40, defense: 25, armourType: ArmourType.Light, armourSlot: ArmourSlot.Head)

player.inventory.addItem(armour)
player.inventory.addItem(sword)

player.equip(player.inventory.items[0])
player.equip(player.inventory.items[0])
player.unequip(player.head!)

print(player.head?.name)
print(player.weapon?.name)
print(player.inventory.items.count)
print(player.inventory.amountFilled)