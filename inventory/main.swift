import Foundation

var player = Player()

player.inventory.addItem(TestWeapon())
player.inventory.addItem(TestHelmet())
player.inventory.addItem(TestChest())

player.equip(player.inventory.items[0])
player.equip(player.inventory.items[0])
player.equip(player.inventory.items[0])
player.unequip(player.head!)

print(player.attack)
print(player.defense)
print(player.head?.name)
print(player.weapon?.name)
print(player.inventory.items.count)
print(player.inventory.amountFilled)
