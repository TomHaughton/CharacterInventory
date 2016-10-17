import Foundation

var player = Player()

player.inventory.addItem(TestWeapon())
player.inventory.addItem(TestHelmet())
player.inventory.addItem(TestChest())
player.inventory.addItem(TestBow())

player.equip(player.inventory.items[0])
player.equip(player.inventory.items[0])
player.equip(player.inventory.items[0])
print(player.weapon?.name)
print(player.inventory.items[0].name)
player.equip(player.inventory.items[0])
print(player.weapon?.name)
print(player.inventory.items[0].name)
print(player.inventory.items.count)
